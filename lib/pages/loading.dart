import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

// This page will redirect to Home screen
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading';

  void setUpWorldTime() async{
    WorldTime instance = WorldTime(location: 'Bogota', flag: 'colombia.png', url: 'America/Bogota');
    await instance.getData();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState(){    // Call once when the Widget is created
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}

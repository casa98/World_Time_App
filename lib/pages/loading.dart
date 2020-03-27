import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// This page will redirect to Home screen
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setUpWorldTime() async{
    WorldTime instance = WorldTime(location: 'Bogota', flag: 'colombia.png', url: 'America/Bogota');
    await instance.getData();

    // Navigate to Home route and take the data there
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    }); // This will pop Loading() from the stack
  }

  @override
  void initState(){    // Call once when the Widget is created
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}

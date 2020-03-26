import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

// This page will redirect to Home screen
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    Response response = await get('http://worldtimeapi.org/api/timezone/America/Bogota');
    Map data = jsonDecode(response.body); // This is a JSON string

    // Get properties from data
    String datetime = data['datetime'];   // Then convert into date/time object
    String offset = data['utc_offset'].toString().substring(0,3);

    //  Create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
    );
  }
}

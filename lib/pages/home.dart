import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};  // An empty map of data

  @override
  Widget build(BuildContext context) {

    // This will get the data that was sent from Loading route
    data = ModalRoute.of(context).settings.arguments;  // Returns a map

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit location'),
            )
          ],
        ),
      ),
    );
  }
}

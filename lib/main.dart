import 'package:flutter/material.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';

/*
  This project will have 3 different screens:
  - Home screen (where time is displayed)
  - Loading screen (while we get the data initially)
  - Screen where user can update the location and choose different location ti find out the time
 */

void main() => runApp(MaterialApp(
  // Which of the routes below will be the initial when open the app (it's for now).
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

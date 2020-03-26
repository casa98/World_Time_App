import 'package:flutter/material.dart';
import 'package:worldtime/pages/home.dart';

/*
  This project will have 3 different screens:
  - Home screen (where time is displayed)
  - Loading screen (while we get the data initially)
  - Screen where user can update the location and choose different location ti find out the time
 */

void main() => runApp(MaterialApp(
  home: Home(),
));

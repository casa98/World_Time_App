import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location;  // Location name for the UI
  String time;      // Time in that location
  String flag;      // URL to an asset flag icon
  String url;       // Location URL for API endpoint, e.g: America/Bogota

WorldTime({this.location, this.flag, this.url});

  Future<void> getData() async {

    try {
      // Make the request
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body); // This is a JSON string

      // Get properties from data
      String datetime = data['datetime']; // Then convert into date/time object
      String offset = data['utc_offset'].toString().substring(0, 3);

      //  Create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // Set time property
      time = DateFormat.jm().format(now);   // A much more human readable format
    }catch(e){
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }

}

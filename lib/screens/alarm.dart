import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

int ringtone = 1;
double timebefore = 5;

class RingTones {
  final int id;
  final String name;

  RingTones({
    required this.id,
    required this.name,
  });
}

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    int min = 30;
    var target = DateTime(2021, 6, 7, 18, min);
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE d MMM').format(now);

    void play() {
      if (target == now) {}
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        brightness: Brightness.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 90.0,
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Alarms Setting',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 30.0,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('yMd').format(now);
    List<Widget> listArray = [];
    int currQuest = 65;
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
          'CP Clock',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 30.0,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        color: Colors.blueGrey[800],
        child: Container(
          child: Column(
            children: [
              resources("hhjaas", 'linkname'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget resources(String name, String link) => Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 100.0,
      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
      padding: EdgeInsets.fromLTRB(15, 5, 5, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.pink[400],
      ),
      child: Row(
        children: [
          Text(
            name,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 30.0,
            ),
          ),
          Text(
            name,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );

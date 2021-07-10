import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

String string = "CF Div 2 Educational Round 234";
String date = "24/07/21";
String time = "20.05";
bool flag = true;

Widget contestBar(String title, var date, var time) => Container(
      width: double.infinity,
      height: 100.0,
      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
      padding: EdgeInsets.all(5),
      child: Container(
        child: Column(
          children: [
            contestTitle(title),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                contestInfoRow(date.toString(), time.toString()),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.amber,
      ),
    );

Widget contestTitle(String contestName) => Container(
      width: 340.0,
      height: 27.0,
      color: Colors.transparent,
      child: Marquee(
        blankSpace: 30.0,
        velocity: 40.0,
        pauseAfterRound: Duration(seconds: 20),
        text: contestName,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 24.0,
        ),
        startAfter: Duration(seconds: 5),
      ),
    );

Widget contestInfoRow(var date, var time) => Container(
      width: 350.0,
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 8.0),
            child: Text(
              date.toString(),
              style: GoogleFonts.montserrat(
                color: Colors.blue[900],
                fontWeight: FontWeight.w800,
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8.0),
            child: Text(
              time.toString(),
              style: GoogleFonts.montserrat(
                color: Colors.pink[600],
                fontWeight: FontWeight.w800,
                fontSize: 26.0,
              ),
            ),
          ),
          ElevatedButton(
            // pass Date and Time in Function
            onPressed: () {},
            child: Icon(
              Icons.alarm,
              size: 35,
            ),
            style: ElevatedButton.styleFrom(
              primary: flag ? Colors.green : Colors.white,
              onPrimary: Colors.black,
              shape: CircleBorder(),
              padding: EdgeInsets.all(7),
            ),
          )
        ],
      ),
    );

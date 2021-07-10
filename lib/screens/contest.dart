import 'dart:convert';

import 'package:cf/Widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

String string = "CF Div 2 Educational Round 234";
String date = "24/07/21";
String time = "20.05";
bool flag = true;

var now = DateTime.now();

List<Widget> contestList = [];

void getData() async {
  http.Response response = await http.get(
    Uri.parse('https://codeforces.com/api/contest.list?gym=false'),
  );
  if (response.statusCode == 200) {
    List<Widget> temp = [];
    String res = response.body;
    for (int i = 0;
        i < 10 && jsonDecode(res)['result'][i]['phase'] == 'BEFORE';
        i++) {
      String title = jsonDecode(res)['result'][i]['name'];
      int datetime = jsonDecode(res)['result'][i]['startTimeSeconds'];
      var unixToepoch = DateTime.fromMillisecondsSinceEpoch(datetime * 1000);
      var date = DateFormat('EEE, MMM d,').format(unixToepoch);
      var time = DateFormat('h:mm a').format(unixToepoch);
      temp.add(contestBar(title, date, time));
      contestList = new List.from(temp.reversed);
    }
  } else {
    contestList.add(
      Image.asset('images/logo.png'),
    );
  }
}

class ContestPage extends StatefulWidget {
  @override
  _ContestPageState createState() => _ContestPageState();
}

class _ContestPageState extends State<ContestPage> {
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Container(
      child: Scaffold(
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
            'Upcoming Contests',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 30.0,
            ),
          ),
        ),
        body: buildBody(),
      ),
    );
  }
}

Widget buildBody() => SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: contestList,
      ),
    );

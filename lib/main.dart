import 'package:cf/screens/contest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String string = "";
void main() {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: PageView(
          controller: pageController,
          children: [
            // Clock(),
            ContestPage(),
            // AlarmPage(),
          ],
        ),
      ),
    );
  }
}

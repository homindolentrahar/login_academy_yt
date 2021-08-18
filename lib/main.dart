import 'package:flutter/material.dart';
import 'package:login_academy_yt/colors.dart';
import 'package:login_academy_yt/pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Academy App',
      theme: ThemeData(
        fontFamily: "SFPro",
        canvasColor: black,
        primaryColor: primary,
      ),
      home: LandingPage(),
    );
  }
}

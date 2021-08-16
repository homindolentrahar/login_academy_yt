import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Academy App',
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text("Academy App"),
          ),
        ),
      ),
    );
  }
}

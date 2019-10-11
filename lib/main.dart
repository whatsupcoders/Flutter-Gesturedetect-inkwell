import 'package:flutter/material.dart';

import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clicks',
      theme: ThemeData(
        primaryColor: new Color(0xff985de3),
      ),
      home: ProfileDisplay(),
    );
  }
}

import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        primaryColorDark: Colors.deepOrange,
      ),
      home: ProfileCard(),
    );
  }
}

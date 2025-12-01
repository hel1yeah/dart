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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Hello Flutter',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gothic',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Action Button Pressed');
          },
          backgroundColor: Colors.deepOrange,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

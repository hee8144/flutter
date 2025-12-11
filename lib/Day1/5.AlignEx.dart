import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[200],
        ),
        drawer: Drawer(),
        body: Align(
          alignment: Alignment.centerRight,
          child: Container(
          color: Colors.blue,
          width: 200,
          height: 200,
          margin: EdgeInsets.fromLTRB(20,50,0,0),
          padding: EdgeInsets.all(5),
        ),
        ),

        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}


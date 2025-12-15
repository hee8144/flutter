import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random ran = Random();
  late Offset position=Offset(ran.nextInt(300)+1,ran.nextInt(300)+1);
  void moveBox(){
    setState(() {
      position=Offset(ran.nextInt(300)+1,ran.nextInt(300)+1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: position.dy,
                left: position.dx,
                child:Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                )
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      moveBox();
                    });
                  }, child: Text("클릭!"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


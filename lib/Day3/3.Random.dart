import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _ran = Random();
  int ranNum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("랜덤숫자:$ranNum"),
              ElevatedButton(onPressed: (){
                setState(() {
                  ranNum=_ran.nextInt(10)+1;
                });
              }, child: Text("랜덤 숫자 뽑기"))
            ],
          ),
        )
      ),
    );
  }
}


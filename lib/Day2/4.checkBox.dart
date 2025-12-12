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
  bool isJavaChecked = true;
  bool isOracleChecked=true;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Checkbox(value: isJavaChecked, onChanged: (value){
                  setState(() {
                    isJavaChecked = value!;
                  });
                }),
                Text("자바"),
                Checkbox(value: isOracleChecked, onChanged: (value){
                  print(value);
                }),
                Text("oracle"),

              ],
            )
          ],
        ),
      ),
    ); }
}


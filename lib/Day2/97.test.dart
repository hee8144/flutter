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
  var _color =Colors.white;
  var _txtColor = Colors.black;
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: (){
            setState(() {
              if(_color ==Colors.white){
                _color=Colors.black;
                _txtColor=Colors.white;
              }else{
                _color=Colors.white;
                _txtColor=Colors.black;
              }
            });
          },
          child: Container(
            color: _color,
            child: Center(
                child:
                  Text("클릭!",style: TextStyle(color: _txtColor,fontSize: 40),)
            ),
          ),
        ),
      ),
    );
  }
}


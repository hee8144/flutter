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
  Random ran = Random();
  int _current =1;
  late List<Widget> list = [];
  void makeBox(){
    List<Widget> tempList=[];
    for(int i =1; i <=10; i++){
      tempList.add(
          Positioned( left: ran.nextDouble()*(MediaQuery.of(context).size.width -100), top: ran.nextDouble()*(MediaQuery.of(context).size.height - 100),
              child:GestureDetector(
                onTap: (){
                  setState(() {
                    if(_current == i){
                      list.removeAt(0);
                      _current++;
                    }
                    if(list.isEmpty){
                      makeBox();
                      _current=1;
                      i=1;
                    }
                  });
                },
                child: Container(width: 50, height: 50, color: Colors.blue,
                    child: Center(
                      child: Text(
                        "$i",style: TextStyle(color: Colors.red),
                      ),)
                      ),
              )));
    };
    setState(() {
      list=tempList;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(child: Stack(
              children: list,
            )),
            ElevatedButton(onPressed: (){
              makeBox();
            }, child: Text("클릭!"))
          ],
        ),
      ),
    );
  }
}


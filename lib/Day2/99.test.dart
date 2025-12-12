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
  int i = 0;
  var _color = Colors.purple[200];
  @override
  Widget build(BuildContext context) {
    _color = i%2==1 ?  Colors.purple[200] : Colors.blue[200];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text("숫자증가"),
        ),
        body:Column(
          children: [
            Expanded(child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("버튼을누르면숫자증가"),
                  Text('$i')
                ],
              ),
            )),
              Align(
              child: Container(
              height: 100,
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  i=i+1;
                });
              },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: _color,
                      // shape: RoundedRectangleBorder(
                        // borderRadius: BorderRadius.zero
                      // )
                  ),
                  child: Text("+")
              ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}


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
        drawer: Drawer(
          child: Column(
            children: [
              Container(width: 310,height: 200,color: Colors.blue[200],child: Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.all(10)),
                  CircleAvatar(backgroundColor: Colors.greenAccent[200],),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("홍길동"),
                      Text("test@test.com")
                    ],
                  )
                ],
              ),)
            ],
          ),
        ),
        body: Align(),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}


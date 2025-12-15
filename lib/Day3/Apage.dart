import 'Bpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Apage(),
    );
  }
}

class Apage extends StatefulWidget {
  const Apage({super.key});

  @override
  State<Apage> createState() => _ApageState();
}

class _ApageState extends State<Apage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text("A페이지"),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_)=>Bpage()));
              }, child: Text("그냥이동")),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>Bpage(msg:"A에서 넘긴값")));
            }, child: Text("값을넣어서 이동"))
          ],
        ),
      ),
    );
  }
}


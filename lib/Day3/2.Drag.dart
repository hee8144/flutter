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
  Offset position = Offset(100, 100);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            
            Positioned(
                top: position.dy,
                left: position.dx,
                 child: GestureDetector(
                   // onTap: (){
                   //   print("클릭됨!");
                   // },
                   onPanUpdate: (details){
                     setState(() {
                       position += details.delta;
                     });
                     print(details);
                   },
                   child: Container(
                    width: 200,height: 200,color: Colors.greenAccent,
                                   ),
                 )
                
            ),
          ],
        ),
      ),
    );
  }
}


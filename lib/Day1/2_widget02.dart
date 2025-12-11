import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        // child: ElevatedButton(
        //     onPressed:(){
        //       print("버튼클릭됨!");
        //     }, child:Text("첫번째 버튼")
        // )
        child: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      ),
    );
  }
}



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("버튼!")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken),color: Colors.red, iconSize: 50,),
                IconButton(onPressed: (){}, icon: Icon(Icons.home),color: Colors.blue,iconSize: 50),
                IconButton(onPressed: (){}, icon: Icon(Icons.star),color: Colors.green,iconSize: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('image1.jpg',width: 70,height: 70),

              ],
            )
          ],
        ),
      ),
    );
  }
}


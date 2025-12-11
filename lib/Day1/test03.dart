import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
     'image1.jpg','image2.jpg','image3.jpg',
      'image4.jpg','image5.jpg','image6.jpg',
    ];
    return MaterialApp(
      home: Scaffold(
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10),
              itemCount: labels.length,
              itemBuilder: (test , index){
                return Image.asset(labels[index],width: 50,height: 50, fit: BoxFit.cover);
              }
          )
      ),
    );
  }
}


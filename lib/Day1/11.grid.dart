import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      'C', '(', '%', '/',
      '7', '8', '9', '*',
      '4', '5', '6', '-',
      '1', '2', '3', '+',
      '0', '00', '.', '='
    ];
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10),
            itemCount: labels.length,
            itemBuilder: (test , index){
              return ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.blue
                ),
                child: Center(
                  child:Text(labels[index])
                ),
              );
            }
            )
      ),
    );
  }
}


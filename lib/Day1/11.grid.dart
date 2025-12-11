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
               var btnColor = index % 4 ==3 ? Colors.blue[200] : Colors.blue[50];
              return ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor:  btnColor
                ),
                child: Center(
                  child:Text(labels[index],style:TextStyle(color : Colors.white, fontSize: 30))
                ),
              );
            }
            )
      ),
    );
  }
}


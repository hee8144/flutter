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
        body: _SnackBarEx(),
      ),
    );
  }
}


class _SnackBarEx extends StatefulWidget {
  const _SnackBarEx({super.key});

  @override
  State<_SnackBarEx> createState() => _SnackBarExState();
}

class _SnackBarExState extends State<_SnackBarEx> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: ElevatedButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("안녕?"),
          action: SnackBarAction(label: "닫기", onPressed: (){}),
          duration: Duration(seconds: 3),
        ));
      }, child: Text("클릭!")),
    );
  }
}
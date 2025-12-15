import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DiaEx(),
    );
  }
}

class DiaEx extends StatefulWidget {
  const DiaEx({super.key});

  @override
  State<DiaEx> createState() => _DiaExState();
}

class _DiaExState extends State<DiaEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()=>showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text("삭제?"),
            content: Text("정말 삭제 하시겠습니까?"),
            actions: [
              TextButton(onPressed: (){}, child: Text("삭제")),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("취소"))
            ],
          );
        }), child: Text("클릭!")),
      ),
    );
  }
}


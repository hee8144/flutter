import 'package:flutter/material.dart';
import 'db.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () async {
                await DB.insertData("hong", 30, 175);
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   content: Text("저장되엇습니다"),
                // ));
              }, child: Text("Insert Test")),
              ElevatedButton(onPressed: () async {
                List<Map<String,dynamic>> list = [];
                list = await DB.getData();
                print(list);
              }, child: Text("Select Test")),
              ElevatedButton(onPressed: () async{
                await DB.updateData(1, "kim", 25);
                print("수정되엇습니다.");

              }, child: Text("Update Test")),
              ElevatedButton(onPressed: () async {
                await DB.deleteData(3);
                print("삭제되었습니다.");
              }, child: Text("Delete Test")),
            ],
          ),
        ),
      ),
    );
  }
}


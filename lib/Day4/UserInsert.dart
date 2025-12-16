import 'dart:ffi';

import 'package:flutter/material.dart';
import 'db.dart';
import 'UserList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserInsert(),
    );
  }
}

class UserInsert extends StatefulWidget {
  const UserInsert({super.key});

  @override
  State<UserInsert> createState() => _UserInsertState();
}

class _UserInsertState extends State<UserInsert> {
  var _Name = TextEditingController();
  var _Age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sqlite실습"),
        actions: [
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Userlist()));
          }, child: Icon(Icons.list))
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(30),
        child: Column(
          children: [
            TextField(
              controller: _Name,
              decoration: InputDecoration(
                labelText: "Name",
              ),
            ),
            TextField(
              controller: _Age,
              decoration: InputDecoration(
                labelText: "Age",
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () async {
              await DB.insertTBL_USER(_Name.text,int.parse(_Age.text));
              _Name.clear();
              _Age.clear();
            }, child: Text("사용자추가"))
          ],
        ),
      ),
    );
  }
}



import 'package:firstproject/Day4/UserList.dart';
import 'package:flutter/material.dart';


class Useredit extends StatelessWidget {
  final String? id;
  final String? name;
  const Useredit({super.key,this.id,this.name});

  @override
  Widget build(BuildContext context) {
    var _Id = TextEditingController(text: id);
    var _Name = TextEditingController(text: name);
    return Scaffold(
        appBar: AppBar(
          title: Text("사용자수정"),
        ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(30),
        child: Column(
          children: [
            TextField(
              controller: _Id,
              decoration: InputDecoration(
                labelText: "Name",

              ),
            ),
            TextField(
              controller: _Name,
              decoration: InputDecoration(
                labelText: "Age",
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Userlist()));
            }, child: Text("수정"))
          ],
        ),
      ),
    );
  }
}


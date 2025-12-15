import 'package:firstproject/Day4/UserEdit.dart';
import 'package:flutter/material.dart';



class Userlist extends StatelessWidget {
  const Userlist({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> list = [
      {"userId" : "hong", "name" : "홍길동", "age" : 30},
      {"userId" : "kim", "name" : "김철수", "age" : 25},
      {"userId" : "park", "name" : "박영희", "age" : 20}
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("사용자 목록"),
      ),
      body: ListView.builder(
          itemCount:list.length,
          itemBuilder: (context,index){

        final user = list[index];

        return ListTile(
          title: Text("아이디 : ${user["userId"]} 이름 : ${user["name"]}"),
          subtitle: Text("나이 : ${user["age"]}"),
          trailing:Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Useredit(id:"${user["userId"]}",name:"${user["age"]}")));
              }, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){

              }, icon: Icon(Icons.delete))
            ],
          )
        );

      }),
    );
  }
}


import 'dart:async';
import 'UserView.dart';
import 'UserEdit.dart';
import 'package:flutter/material.dart';
import 'db.dart';


class Userlist extends StatefulWidget {
  const Userlist({super.key});

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  List<Map<String,dynamic>> list = [];

  Future<void> _selectUserList () async{
    var userlist = await DB.selectUser();
    setState(() {
      list=userlist;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectUserList();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("사용자 목록"),
      ),
      body: ListView.builder(
          itemCount:list.length,
          itemBuilder: (context,index){

        final user = list[index];

        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Userview(userId:user["userId"])));
          },
          child: ListTile(
            title: Text("아이디 : ${user["userId"]} 이름 : ${user["name"]}"),
            subtitle: Text("나이 : ${user["age"]}"),
            trailing:Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () async {
                  bool flg =await
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>UserEdit(userId:user["userId"])));
                  if(flg){
                    _selectUserList();
                  }
                }, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title : Text("삭제"),
                        content: Text("${user["name"]}님을 정말 삭제 하실거?"),
                        actions: [
                          TextButton(
                              onPressed: () async {
                                  DB.deleteUser(user["userId"]);
                                  Navigator.of(context).pop();
                                  _selectUserList();
                              },
                              child: Text("삭제")
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text("취소")
                          )
                        ],
                      );
                    },
                  );
                }, icon: Icon(Icons.delete))
              ],
            )
          ),
        );

      }),
    );
  }
}


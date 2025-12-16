import 'package:flutter/material.dart';
import 'db.dart';

class Userview extends StatefulWidget {
  final int? userId;
  const Userview({super.key,this.userId});


  @override
  State<Userview> createState() => _UserviewState();
}

class _UserviewState extends State<Userview> {
  Map<String,dynamic> info = {};

  Future<void> _selectUser () async{
    var user = await DB.getUser( widget.userId!);

    setState(() {
      info=user.first ;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("사용자 정보"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("아이디 :${info["userId"]}"),
            SizedBox(height: 20,),
            Text("이름 : ${info["name"].toString()}"),
            SizedBox(height: 20,),
            Text("나이: ${info["age"].toString()}"),
          ],
        ),
      ),
    );
  }
}

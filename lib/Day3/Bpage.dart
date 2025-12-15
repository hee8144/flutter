import 'package:flutter/material.dart';


class Bpage extends StatelessWidget {
  final String? msg;
  const Bpage({super.key,this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text("B페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg ?? "전달받은 값 없다!")
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "email",
                    hintText: "ex)test@naver.com",
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.check_circle,color: Colors.green,),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.greenAccent,
                    // enabled: false

                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                    print("입력된 값 :${_email.text}");
                }, child: Text("가입"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


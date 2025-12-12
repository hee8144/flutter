import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _to = TextEditingController();
  var _todo = <String>[];
  var _todoCheck = <String>[];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [

            SizedBox(height: 20),
            Text("할일", style: TextStyle(fontSize: 24)),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _to,
                      decoration: const InputDecoration(
                        hintText: "할 일을 입력하세요",
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_to.text.trim().isNotEmpty) {
                          _todo.add(_to.text.trim());
                        }
                        _to.clear();
                      });
                    },
                    child: const Text("추가"),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: _todo.length,
                itemBuilder: (context, index) {

                  bool isChecked = _todoCheck.contains(_todo[index]);

                  return ListTile(
                    leading: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            _todoCheck.add(_todo[index]);
                          } else {
                            _todoCheck.remove(_todo[index]);
                          }
                        });
                      },
                    ),

                    title: Text(
                      _todo[index],
                      style: TextStyle(
                        decoration: isChecked
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),

                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          _todoCheck.remove(_todo[index]);
                          _todo.removeAt(index);
                        });

                        Fluttertoast.showToast(msg: "삭제되었습니다.");
                      },
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}

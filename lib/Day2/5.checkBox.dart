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
  List<String> checkedList=[];
  List<String> imgList=[
    "java.jpg","oracle.jpg","html.jpg"
  ];

  void listChange(String subject,bool isChecked){
    setState(() {
      if(isChecked){
        checkedList.add(subject);
      }else{
        checkedList.remove(subject);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ListTile(
              title: Text("java"),
              leading: Checkbox(value: checkedList.contains(imgList[0]), onChanged: (value){
                listChange(imgList[0],value!);
              }),
              onTap: (){
                setState(() {
                  listChange(imgList[0],!checkedList.contains(imgList[0]));
                });
              },
            ),
            ListTile(
              title: Text("oracle"),
              leading: Checkbox(value: checkedList.contains(imgList[1]), onChanged: (value){
                listChange(imgList[1],value!);
              }),
              onTap: (){
                setState(() {
                  listChange(imgList[1],!checkedList.contains(imgList[1]));
                });
              },
            ),
            ListTile(
              title: Text("html"),
              leading: Checkbox(value: checkedList.contains(imgList[2]), onChanged: (value){
                listChange(imgList[2],value!);
              }),
              onTap: (){
                setState(() {
                  listChange(imgList[2],!checkedList.contains(imgList[2]));
                });
              },
            ),
            Expanded(child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4,mainAxisSpacing: 10,crossAxisSpacing: 10 ),
                  itemCount: checkedList.length,
                  itemBuilder: (value,index){
                    return Image.asset(checkedList[index],width: 200,height: 200,);
                })
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text("상단영역!! 타이틀!"),
        ),
        drawer: Drawer(

        ),
        body: ListView(
          children: [
            ListTile(
              leading: Image.asset("image1.jpg",width: 50,height: 50, fit: BoxFit.cover,),
              title: Text("강아지",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("150.000원,인천부평동,"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)) ,
              onTap:  () {
                print("제품 클릭");
              },
            ),
            Divider(height: 1,color: Colors.grey,),
            ListTile(
              leading: Image.asset("image1.jpg",width: 50,height: 50, fit: BoxFit.cover,),
              title: Text("강아지",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("150.000원,인천부평동,"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)) ,
              onTap:  () {
                print("제품 클릭");
              },
            ),
            Divider(height: 1,color: Colors.grey,),
            ListTile(
              leading: Image.asset("image1.jpg",width: 50,height: 50, fit: BoxFit.cover,),
              title: Text("강아지",style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("150.000원,인천부평동,"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)) ,
              onTap:  () {
                print("제품 클릭");
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.domain),iconSize: 60,),
              IconButton(onPressed: (){}, icon: Icon(Icons.home),iconSize: 60),
              IconButton(onPressed: (){}, icon:Icon(Icons.backspace),iconSize: 60),
            ],
          ),
        ),
      ),
    );
  }
}


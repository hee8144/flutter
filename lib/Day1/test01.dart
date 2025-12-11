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
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("image2.jpg"),
                    ),
                    SizedBox(height: 4,),
                    Text("홍길동" ,style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 4,),
                    Text('hong@naver.com'),
                  ],
                ),
              ),

              // Container(
              //   width: 50,height: 250,color: Colors.blue,
              // ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("홈",style: TextStyle(fontWeight: FontWeight.bold)),
                onTap:  () {},
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("카메라",style: TextStyle(fontWeight: FontWeight.bold)),
                onTap:  () {},
              ),
              ListTile(
                leading:Icon(Icons.logout),
                title: Text("로그아웃",style: TextStyle(fontWeight: FontWeight.bold)),
                onTap:  () {},
              )
            ],
          ),
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


import 'package:flutter/material.dart';
// import 'custom_clipper.dart'; //背景组件
// import 'page1.dart'; //页面1

void main() {
  runApp(
    MaterialApp(
      title："导航演示1"，
      home: new FirstScreen()
    ) 
  );
}  

class MyApp extends StatelessWidget {
  @Override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );  
  }
} 



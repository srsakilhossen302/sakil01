import 'dart:math';

import 'package:classproject/main.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("Home page"),
        leading: Icon(Icons.person, color: Colors.black,),
        actions: [
          Icon(Icons.search, color: Colors.black),
        ],
      ),

      body: Container(
           width: double.infinity,
           padding: EdgeInsets.all(20),
           color: Colors.yellow,
        child: Column(
          children: [
              Text("$count")
          ],
        ),
      ),
    );
  }
}


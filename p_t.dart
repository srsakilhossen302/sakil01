import 'package:classproject/main.dart';
import 'package:flutter/material.dart';

 void main ()=> runApp(MyApp());

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         body: HomePage2(),
       ),
     );
   }
 }


 class HomePage2 extends StatefulWidget {
   const HomePage2({super.key});

   @override
   _HomePage2State createState() => _HomePage2State();
 }

 class _HomePage2State extends State<HomePage2> {
   TextEditingController nameController = TextEditingController();
   TextEditingController rollController = TextEditingController();
   TextEditingController passController = TextEditingController();
   TextEditingController idController = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Center(child: Text("Sakil Hossen")),
       ),

       body: TextFormField(
         controller: nameController,

       ),
     );
   }
 }


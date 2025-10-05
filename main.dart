import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3, child: Scaffold(body: HomePage())),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextEditingController
  final nameController = TextEditingController();
  final courseController = TextEditingController();
  final idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leadingWidth: 100, // gives enough space for 2 icons
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        title: Text("Sakil Hossen"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dashboard_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.messenger)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.ondemand_video)),
            Tab(icon: Icon(Icons.people_alt)),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(36.10),
        child: Column(
          children: [
            _buildTextField(
              controller: nameController,
              hint:"Enter Your Name",
            ),
            SizedBox(height: 16),
            _buildTextField(
              controller: courseController,
              hint:"Enter Your Course",
            ),
            SizedBox(height: 16),
            _buildTextField(
              controller: idController,
                hint:"Enter Your ID",
            ),
            SizedBox(height: 32),
            ElevatedButton(onPressed: (){
              String name = nameController.text;
              String course = courseController.text;
              String id = idController.text;

              showDialog(context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Your Info"),
                    content: Text("1.Name:$name\n 2.Course:$course\n 3.ID:$id"),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context),
                          child: Text("ok"),
                      ),
                    ],
                  ),
              );

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            )  ,
              child: Text("Submit",
              style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
}){
    return SizedBox(
      height: 45,
      child: TextFormField(
        controller: controller,
        autofocus: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          counterText: "",
          hintText: hint,
          hintStyle: TextStyle(fontSize: 14),
          contentPadding: EdgeInsets.symmetric(horizontal:12, vertical: 8),
          suffixIcon: Icon(Icons.search, size: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
           borderSide:BorderSide(color: Colors.deepPurple, width: 1.5),
              borderRadius: BorderRadius.circular(8)
          ),
        ),
      ),
    );
  }
}

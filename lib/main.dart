import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());

  // const app = MaterialApp(title: "หัวข้อ", home:
  // runApp(app);

  runApp(
    MaterialApp(
      title: "หัวข้อ",
      home: Scaffold(
        appBar: AppBar(
          title: Text("หัวข้อ"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ), // AppBar
        body: Home(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.purpleAccent,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.all(50),
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 30, 
            color: Colors.white,
            fontWeight: FontWeight.bold,
            ),
        ),
      ),
    );
  }
}
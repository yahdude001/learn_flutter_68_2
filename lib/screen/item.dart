import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<String> data = ["สมชาย", "สมหญิง", "สมปอง", "สมศรี", "สมบัติ"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.pinkAccent),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          padding: EdgeInsets.all(40),
          child: Text(
            data[index],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}

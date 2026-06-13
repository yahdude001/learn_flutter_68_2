import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.pinkAccent),
            onPressed: () {
              print("กดปุ่มแล้ว");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ), 
          ),
          const SizedBox(height: 20), // เพิ่มระยะห่างระหว่างปุ่ม
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.purpleAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: () {
              print("กดปุ่มแล้ว FilledButton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ), 
          ),
          const SizedBox(height: 20), // เพิ่มระยะห่างระหว่างปุ่ม
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 233, 255, 68),
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              print("กดปุ่มแล้ว ElevatedButton");
            },
            child: Text(
              "กดปุ่มนี้",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ), // Column
    ); // Center
  }
}

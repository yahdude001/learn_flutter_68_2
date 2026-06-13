import 'package:flutter/material.dart';


enum Job {
  developer(
    title: "นักพัฒนา",
    description: "ทำงานเกี่ยวกับการพัฒนาแอปพลีเคชั่นและซอฟต์แวร์",
    image: "assets/imaeges/tung.jpg",
    color: Colors.purpleAccent,
  ),

  designer(
    title: "นักออกแบบ",
    description: "ทำงานเกี่ยวกับการออกแบบกราฟิกและประสบการณ์ผู้ใช้",
    image: "assets/imaeges/tung.jpg",
    color: Colors.pinkAccent,
  ),
  teacher(
    title: "ครู",
    description: "ทำงานเกี่ยวกับการสอนและการให้ความรู้",
    image: "assets/imaeges/tung.jpg",
    color: Colors.blueAccent,
  ),
  doctor(
    title: "แพทย์",
    description: "ทำงานเกี่ยวกับการดูแลสุขภาพและการรักษาโรค",
    image: "assets/imaeges/tung.jpg",
    color: Colors.greenAccent,
  ),
  lawyer(
    title: "ทนายความ",
    description: "ทำงานเกี่ยวกับการให้คำปรึกษาทางกฎหมายและการเป็นตัวแทนในศาล",
    image: "assets/imaeges/tung.jpg",
    color: Colors.orangeAccent,
  );

 const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  final String title;
  final String description;
  final String image;
  final Color color;

}

class Person {
   String name;
   int age;
   Job job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 20, job: Job.developer),
  Person(name: "สมศรี", age: 25, job: Job.designer),
  Person(name: "สมปอง", age: 30, job: Job.teacher),
  Person(name: "สมหมาย", age: 35, job: Job.doctor),
  Person(name: "สมจิตร", age: 40, job: Job.lawyer),
];
class Person {
  String name;
  int age;
  String job;


  Person({required this.name, required this.age, required this.job});
}


List<Person> people = [
  Person(name: "สมชาย", age: 30, job: "นักเรียน"),
  Person(name: "สมศรี", age: 25, job: "นักออกแบบ"),
  Person(name: "สมปอง", age: 40, job: "หมอ"),
  Person(name: "สมหมาย", age: 35, job: "วิศวกร"),
  Person(name: "สมจิตร", age: 28, job: "นักธุรกิจ"),
];
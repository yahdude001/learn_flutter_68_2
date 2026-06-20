import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

import 'package:learn_flutter_68_2/main.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job? _job = Job.developer;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Person"),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          // child: Column(
          //   children:[
          //     TextFormField(decoration: InputDecoration(labelText: "Name")),
          //     TextFormField(
          //       decoration: InputDecoration(labelText: "Age"),
          //       keyboardType: TextInputType.number,
          //     ),
          //     DropdownButtonFormField<Job>(
          //       decoration: InputDecoration(labelText: "Job"),
          //       items: Job.values
          //           .map((e) => DropdownMenuItem<Job>(
          //                 value: e,
          //                 child: Text(e.title),
          //               ))
          //           .toList(),
          //       onChanged: (Job? value) {
          //         print("selected Job:) ${value?.title}");
          //       },
          //     ),
          //     SizedBox(height: 20),
          //     FilledButton(
          //       onPressed: () {
          //         // Handle form submission
          //       },
          //       style: FilledButton.styleFrom(
          //         backgroundColor: Colors.pinkAccent,
          //         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          //       ),
          //       child: const Text("Submit"),
          //     )
          //   ]
          // )
          child: Form(
            key: _formKey,
            child: Column(
              children:<Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value ?? "";
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter an age";
                    }
                    if (int.tryParse(value) == null) {
                      return "Please enter a valid number";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.tryParse(value ?? "20") ?? 20;
                  },
                ),
                DropdownButtonFormField<Job>(
                  decoration: InputDecoration(labelText: "Job"),
                  initialValue: _job,
                  items: Job.values
                      .map((key) => DropdownMenuItem<Job>(
                            value: key,
                            child: Text(key.title),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print("Name: $_name, Age: $_age, Job: ${_job?.title}");

                      setState(() {
                        people.add(Person(name: _name, age: _age, job: _job!));
                      });

                      Navigator.pop(context);
                    }
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
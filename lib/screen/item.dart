import 'package:flutter/material.dart';

import 'package:learn_flutter_68_2/model/person.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:learn_flutter_68_2/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<String> data = ["สมชาย", "สมหญิง", "สมปอง", "สมศรี", "สมบัติ"];

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: people.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         color: people[index].job.color,
    //       ),
    //       margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
    //       padding: EdgeInsets.all(40),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "ชื่อ: ${people[index].name}",
    //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //               ),
    //               Text(
    //                 "อายุ: ${people[index].age}ปี",
    //                 style: TextStyle(fontSize: 18),
    //               ),
    //               Text(
    //                 "อาชีพ: ${people[index].job.title}",
    //                 style: TextStyle(fontSize: 18),
    //               ),
    //             ],
    //           ),
    //           Image.asset(
    //             people[index].job.image,
    //             width: 80,
    //             height: 80,
    //             fit: BoxFit.cover,
    //           )
    //         ],
    //       ),
    //     );
    //   },
   return Column(
      children: [
        Expanded(
          child:ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: people[index].job.color,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ชื่อ: ${people[index].name}",
                                style: GoogleFonts.kanit(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text("อายุ: ${people[index].age} ปี",
                                style: GoogleFonts.kanit(fontSize: 18),),
                            Text("อาชีพ: ${people[index].job.title}",
                                style: GoogleFonts.kanit(fontSize: 18),),
                          ],
                        ),
                        Image.asset(
                          people[index].job.image,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AddForm();
                                  },
                                ),
                              ).then((_) => setState(() {}));
                            },
                            icon: Icon(Icons.add, size: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
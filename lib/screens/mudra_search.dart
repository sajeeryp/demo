import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mudrasearch extends StatelessWidget {
  const Mudrasearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text(
          "Mudra Loan",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade200,
          ),
          child: TextField(
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
      ]),
    );
  }
}

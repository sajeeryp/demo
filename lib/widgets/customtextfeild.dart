import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hint;
  TextEditingController controller;

  CustomFormField({Key? key, required this.hint, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade300),
      child: Center(
        child: TextField(
          controller: controller,
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(border: InputBorder.none, hintText: hint),
        ),
      ),
    );
  }
}

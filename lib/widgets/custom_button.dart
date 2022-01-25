import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String title;
  final Function() ontap;

  const Custombutton({Key? key, required this.title, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        margin: EdgeInsets.all(8),
        child: Center(
          child: Text(title),
        ),
        height: 80,
        width: MediaQuery.of(context).size.width / 2.2,
      ),
    );
  }
}

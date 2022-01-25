import 'package:flutter/material.dart';

class Popupbutton extends StatelessWidget {
  final String poptitle;
  final Function() popontap;

  const Popupbutton({Key? key, required this.poptitle, required this.popontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: popontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.shade200,
        ),
        margin: EdgeInsets.all(8),
        child: Center(
          child: Text(poptitle,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
        ),
        height: 50,
        width: MediaQuery.of(context).size.width / 2.2,
      ),
    );
  }
}

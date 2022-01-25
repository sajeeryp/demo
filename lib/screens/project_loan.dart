import 'package:flutter/material.dart';

import 'client_details.dart';

class Projectloan extends StatelessWidget {
  const Projectloan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ))
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Project Loan",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                "At IDFC FIRST Bank, we want to help you achieve your personal dreams. Whether it is wedding expenses, unforeseen medical bills, funding your dream vacation or renovating your home; IDFC First Bank can help you meet all these diverse financial needs and more with an unsecured personal loan. We have also made it extremely easy with a paperless and hassle-free application process. At IDFC FIRST Bank, we want to help you achieve your personal dreams. Whether it is wedding expenses, unforeseen medical bills, funding your dream vacation or renovating your home; IDFC First Bank can help you meet all these diverse financial needs and more with an unsecured personal loan. We have also made it extremely easy with a paperless and hassle-free application process."),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 30), primary: Colors.grey.shade500),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClientDetailsFill()));
                },
                child: Text("DOWNLOAD")),
          ],
        ),
      ),
    );
  }
}

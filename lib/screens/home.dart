import 'package:demo/screens/project_loan.dart';
import 'package:demo/widgets/custom_button.dart';
import 'package:demo/widgets/popbutton.dart';
import 'package:flutter/material.dart';

import 'loan_details.dart';
import 'mudra_search.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
      bottomNavigationBar: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.grey.shade400,
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.grey.shade700,
                iconSize: 35,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                color: Colors.grey.shade700,
                iconSize: 35,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.grey.shade700,
                iconSize: 35,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
                //color: Colors.blueGrey.shade100,

                height: 140,
                width: 500,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Intant Loan !!",
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  ),
                  child: Center(child: Text("Find nearest DSA")),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombutton(
                    ontap: () {
                      // bottomsheet(context);
                      // {},
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildPopupDialog(context),
                      );
                    },
                    title: 'Project Loan',
                  ),
                  Custombutton(
                    ontap: () {},
                    title: 'Home Loan',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombutton(
                    ontap: () {},
                    title: 'Gold Loan',
                  ),
                  Custombutton(
                    ontap: () {},
                    title: 'Business Loan',
                  ),
                ],
              ),
              Container(
                height: 100,
                color: Colors.grey.shade300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombutton(
                    ontap: () {},
                    title: 'Credit card Loan',
                  ),
                  Custombutton(
                    ontap: () {},
                    title: 'Lorem Ipusum',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Custombutton(
                    ontap: () {},
                    title: ' Lorem Ipusum',
                  ),
                  Custombutton(
                    ontap: () {},
                    title: ' Lorem Ipusum',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void bottomsheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container();
        });
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      backgroundColor: Colors.grey.shade500,
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Popupbutton(
            popontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Mudrasearch()));
            },
            poptitle: 'Mudra Loan',
          ),
          Popupbutton(
            popontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Loandetails()));
            },
            poptitle: 'Nora Loan',
          ),
          Popupbutton(
            popontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Projectloan()));
            },
            poptitle: 'Lorem Iorem ipsum',
          ),
        ],
      ),
    );
  }
}

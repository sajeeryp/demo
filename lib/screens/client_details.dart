import 'package:demo/widgets/customtextfeild.dart';
import 'package:flutter/material.dart';

class ClientDetailsFill extends StatefulWidget {
  const ClientDetailsFill({Key? key}) : super(key: key);

  @override
  _ClientDetailsFillState createState() => _ClientDetailsFillState();
}

class _ClientDetailsFillState extends State<ClientDetailsFill> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                CustomFormField(
                  controller: nameController,
                  hint: 'Name',
                ),
                CustomFormField(
                  controller: addressController,
                  hint: 'Address',
                ),
                CustomFormField(
                  controller: dobController,
                  hint: 'Date of Birth',
                ),
                CustomFormField(
                  controller: amountController,
                  hint: 'Loan Amount',
                ),
                CustomFormField(
                  controller: emailController,
                  hint: 'Email id',
                ),
                CustomFormField(
                  controller: mobileController,
                  hint: 'mobile',
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade400,
                  ),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BUCSE9 extends StatefulWidget {
  const BUCSE9({super.key});

  @override
  State<BUCSE9> createState() => _BUCSE9FormState();
}

class _BUCSE9FormState extends State<BUCSE9> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController rollController = TextEditingController();
  final TextEditingController regController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();

  String? bloodGroup;
  String? gender;

  String result = "";

  void submitForm() {

    setState(() {
      result =
      "Name: ${nameController.text}\n"
      "Roll: ${rollController.text}\n"
      "Registration: ${regController.text}\n"
      "Blood Group: ${bloodGroup ?? "Not Selected"}\n"
      "Gender: ${gender ?? "Not Selected"}\n"
      "Phone: ${phoneController.text}\n"
      "About: ${aboutController.text}";
    });

    // reset
    nameController.clear();
    rollController.clear();
    regController.clear();
    phoneController.clear();
    aboutController.clear();

    setState(() {
      bloodGroup = null;
      gender = null;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('STUDENT INFORMATION',
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Column(
          children: [

            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            Row(
              children: [

                Expanded(
                  child: TextFormField(
                    controller: rollController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.confirmation_number),
                      labelText: 'Enter your roll',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: TextFormField(
                    controller: regController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      labelText: 'Enter your reg. no.',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 10),

            DropdownButtonFormField<String>(
              value: bloodGroup,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.bloodtype),
                labelText: 'Select yout blood group',
                border: OutlineInputBorder(),
              ),
              

              items: ["A+","A-","B+","B-","AB+","AB-","O+","O-"]
                  .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ))
                  .toList(),

              onChanged: (val) {
                setState(() {
                  bloodGroup = val;
                });
              },
            ),

            SizedBox(height: 10),

            Row(
              children: [
          Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (val) {
                    setState(() {
                      gender = val.toString();
                    });
                  },
                ),
                Text("Male"),

                Radio(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (val) {
                    setState(() {
                      gender = val.toString();
                    });
                  },
                ),
                Text("Female"),

              ],
            ),

            SizedBox(height: 10),

            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Enter your phonr number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),
          TextFormField(
            controller: aboutController,
            maxLines: 3,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.info),
              labelText: 'About Me',
              border: OutlineInputBorder(),
            ),
          ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Submit",
                  style: TextStyle(
                    color: Colors.white),),
                  SizedBox(width: 10),
                  Icon(Icons.send),
                ],
              ),
            ),

            SizedBox(height: 10),

            if (result.isNotEmpty)
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: Text(
                  result,
                  style: TextStyle(fontSize: 10),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
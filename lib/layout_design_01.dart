import 'package:flutter/material.dart';

void main() {
  runApp(BUCSE9());
 }

 class BUCSE9 extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
       backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 255, 208),
        toolbarHeight: 80,
        centerTitle: true,
        title: Text("5th April 2026"),
        leading: Icon(Icons.arrow_back),
      ),

      body: Column(
        children: [
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text(
                    "22CSE036",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(
                    "A+",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text(
                    "Chandpur",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 120),

          Container(
            width: 360,
            height: 90,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Text(
              "11-00-36-22",
              style: TextStyle(fontSize: 16),
            ),
          ),

          Spacer(),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 0, bottom: 15),
              child: Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.pink,
                ),
                child: Text(
                  "Tamanna",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
      )
    );
  }
 }
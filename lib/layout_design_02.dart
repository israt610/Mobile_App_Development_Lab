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
          backgroundColor: Color(0xFF0B2C2C), 
          appBar: AppBar(
            backgroundColor: Color(0xFF0B2C2C),
            elevation: 0,
            toolbarHeight: 100,
            title: Padding(
              padding: const EdgeInsets.only(top: 70), 
              child: Text(
                "Secondary Numbers",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            centerTitle: false,
          ),

          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [

                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 18, 53, 53),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 15,
                        offset: Offset(0, 6), 
                      ),
                    ],
                  ),

                  child: Row(
                    children: [

                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white10,
                        ),
                        child: Icon(Icons.phone, color: Colors.white70),
                      ),

                      SizedBox(width: 15),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "+8801850168457",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Home • Added 2mo ago",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Icon(Icons.edit, color: Colors.white70),
                      SizedBox(width: 15),
                      Icon(Icons.delete, color: Colors.white70),
                    ],
                  ),
                ),

                SizedBox(height: 25),

               Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 18, 53, 53),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 15,
                        offset: Offset(0, 6), 
                      ),
                    ],
                  ),

                  child: Row(
                    children: [

                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white10,
                        ),
                        child: Icon(Icons.phone, color: Colors.white70),
                      ),

                      SizedBox(width: 15),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "+8809612-331199",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Work • Unverified",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Icon(Icons.edit, color: Colors.white70),
                      SizedBox(width: 15),
                      Icon(Icons.delete, color: Colors.white70),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
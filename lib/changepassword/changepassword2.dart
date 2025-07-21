import 'package:flutter/material.dart';

class Changepassword2 extends StatefulWidget {
  const Changepassword2({super.key});

  @override
  State<Changepassword2> createState() => _Changepassword2State();
}

class _Changepassword2State extends State<Changepassword2> {
  void popup(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 94,
                  height: 94,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 7, 62, 108)),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Success",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 6, 63, 110),
                      fontSize: 22),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Password has been changed",
                  style: TextStyle(fontSize: 15),
                ),
                Text("Successfully", style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor:
                              const Color.fromARGB(255, 7, 64, 111)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white,fontSize: 15),
                      )),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Change Password",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "New password",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "*************",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Re-Enter New Password",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "*************",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 25, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP sent to aravind@gmail.com",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "1235",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              width: 350,
              height: 55,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 7, 47, 79),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    popup(context);
                  },
                  child: Text("Save",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}

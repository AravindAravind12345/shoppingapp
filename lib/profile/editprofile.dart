import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  void profilepop(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                Text("Your details has been updated"),
                Text("Successfully")
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      width: 110,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 18.5),
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 60, color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 8, 69, 120),
                        shape: BoxShape.circle),
                    width: 100,
                    height: 100,
                  ),
                  Positioned(
                      top: 80,
                      left: 65,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 17,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 25, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Text(
                          "update",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 5, 68, 120)),
                        ),
                      ),
                      hintText: "Aravind R",
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
                      "E-mail",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Text(
                          "update",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 5, 68, 120)),
                        ),
                      ),
                      hintText: "aravind@gmail.com",
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
                      "Mobile Number",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(13),
                        child: Text(
                          "update",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 5, 68, 120)),
                        ),
                      ),
                      hintText: "9624997434",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 350,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 7, 47, 79),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {profilepop(context);},
                    child: Text("Update",
                        style: TextStyle(color: Colors.white, fontSize: 20))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

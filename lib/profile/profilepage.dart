import 'package:ecommerce_app/bottomnav/bottomnavigation.dart';
import 'package:ecommerce_app/changepassword/changepassword.dart';
import 'package:ecommerce_app/profile/addressbook.dart';
import 'package:ecommerce_app/profile/editprofile.dart';
import 'package:ecommerce_app/profile/myorders.dart';
import 'package:ecommerce_app/profile/profilevalues.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  void logout(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Are you sure want to Logout"),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                          width: 100,
                          height: 35,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  backgroundColor:
                                      const Color.fromARGB(255, 5, 59, 103),
                                  foregroundColor: Colors.white),
                              onPressed: () {},
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavigation()));
                                },
                                child: Text("Yes")))),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 100,
                          height: 35,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  backgroundColor:
                                      const Color.fromARGB(255, 5, 59, 103),
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("No")))
                    ],
                  ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bottomnavigation()));
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 3, 55, 97),
                        shape: BoxShape.circle),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "A",
                        style: TextStyle(color: Colors.white, fontSize: 60),
                      ),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aravind R",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "aravind@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Personal information",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Editprofile()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.border_color),
                title: Text("Edit profile"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Addressbook()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.assignment_add),
                title: Text("Address book"),
                trailing: Icon(Symbols.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Myorders()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Symbols.package_2),
                title: Text("Order Details"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Changepassword()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.lock),
                title: Text("Change password"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                logout(context);
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.logout),
                title: Text("Log out"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

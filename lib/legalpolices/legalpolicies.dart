// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/bottomnav/bottomnavigation.dart';
import 'package:ecommerce_app/legalpolices/aboutus.dart';
import 'package:ecommerce_app/legalpolices/privacypolicy.dart';
import 'package:ecommerce_app/legalpolices/returnandrefundpolicy.dart';
import 'package:ecommerce_app/legalpolices/termsandconditions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Legalpolicies extends StatefulWidget {
  const Legalpolicies({super.key});

  @override
  State<Legalpolicies> createState() => _LegalpoliciesState();
}

class _LegalpoliciesState extends State<Legalpolicies> {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavigation()));
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Legal Policies",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Aboutus()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.info),
                title: Text("About Us"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Privacypolicy()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Symbols.book_2),
                title: Text("Privacy policy"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Termsandconditions()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.content_paste),
                title: Text("Terms and Conditions"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Returnandrefundpolicy()));
              },
              child: ListTile(
                shape: Border.all(
                  color: const Color.fromARGB(255, 218, 217, 217),
                ),
                leading: Icon(Icons.keyboard),
                title: Text("Return & Refund policy"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

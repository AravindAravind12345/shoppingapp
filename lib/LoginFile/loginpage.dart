import 'package:ecommerce_app/LoginFile/registerpage.dart';
import 'package:ecommerce_app/google%20login.dart';
import 'package:ecommerce_app/googleautth/googlesignin.dart';
import 'package:ecommerce_app/logout%20page.dart';
import 'package:ecommerce_app/mainpages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginpage extends StatefulWidget {
 const  Loginpage({super.key});

  @override
  
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
    final provider = Googlelog();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: 200,
                  height: 170,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/splashimg.png"))),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  child: Text("welcome Back!",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 87, 82, 82),
                          fontSize: 20)),
                ),
                Container(
                  child: Text("Please enter your details.",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 87, 82, 82),
                          fontSize: 20)),
                ),
              ],
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
                    hintText: "Enter your e-mail",
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
                    "Password",
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
                    hintText: "enter your password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {
                     GoogleSignIn().signOut();
                    FirebaseAuth.instance.signOut();

                  }, child: Text("Forget password?")),
                ],
              ),
            ),
            SizedBox(
              height: 18,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registerpage()));
                  },
                  child: Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {},
                  child: Text("Do you have an account? sign up")),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 1,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Or"),
                  ),
                  Container(
                    width: 100,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: InkWell(
                onTap: () async{
                  final User =await provider.google();
                },
                child: Image.asset("assets/googleicon.png",height: 55,)),
            )
          ],
        ),
      ),
    );
  }
}

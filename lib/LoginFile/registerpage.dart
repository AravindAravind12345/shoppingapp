import 'package:ecommerce_app/LoginFile/otppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  TextEditingController phonecontroller = TextEditingController();
  void sendOTP(BuildContext context) async {
    String phone = phonecontroller.text.trim();

    // Ensure phone number starts with +91
    if (!phone.startsWith('+91')) {
      phone = '+91$phone';
    }
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$phone");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed: ${e.message}")),
        );
      },
      codeSent: (String verificationId, int? resendToken) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Otppage(verification: verificationId),
          ),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  } 

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
                    "Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  child: Text("welcome Back!",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 199, 42, 42),
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
                    "PhoneNumber",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: TextFormField(
                controller: phonecontroller,
                decoration: InputDecoration(
                    hintText: "Enter Your PhoneNumber",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 45,
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
                    sendOTP(context);
                  },
                  child: Text("Get OTP",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              child: TextButton(
                  onPressed: () {},
                  child: Text("Already have an account? Login")),
            )
          ],
        ),
      ),
    );
  }
}

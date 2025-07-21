import 'package:ecommerce_app/LoginFile/createaccount.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:flutter/material.dart';

class Otppage extends StatefulWidget {
  String verification;
  Otppage({super.key,required this.verification});

  @override
  State<Otppage> createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  TextEditingController otpController = TextEditingController();

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: widget.verification,
      smsCode:'000000'
    );

    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Phone Verified!")));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Createaccount()));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid OTP")));
    }
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
                    "OTP Verification",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  child: Text("OTP sent to your ",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 87, 82, 82),
                          fontSize: 20)),
                ),
                Container(
                  child: Text("E-mail",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 87, 82, 82),
                          fontSize: 20)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                controller: otpController,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 60,
                    fieldWidth: 60,
                    inactiveColor: const Color.fromARGB(255, 61, 102, 172)),
              ),
            ),
            Text(
              "0:28",
              style: TextStyle(
                  color: const Color.fromARGB(255, 12, 99, 171), fontSize: 17),
            ),
            Container(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Did not receive a OTP?resend OTP",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
            ),
            SizedBox(
              height: 20,
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
                    print(otpController.text);
                    verifyOTP();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Createaccount()));
                  },
                  child: Text("Verify OTP",
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}

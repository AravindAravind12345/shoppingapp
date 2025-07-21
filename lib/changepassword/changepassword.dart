
import 'package:ecommerce_app/changepassword/changepassword2.dart';
import 'package:flutter/material.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
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
        SizedBox(height: 50,),
                   Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 5, left: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New password",style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "*************",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 5, left: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Re-Enter New Password",style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "*************",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 25,top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter OTP sent to aravind@gmail.com",style: TextStyle(fontSize: 16),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,right: 23),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter OTP",
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
             
              SizedBox(height: 28,),
              Container(
                width: 350,
                height: 55,
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 7, 47, 79),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Changepassword2()));
                  }, child: Text("Generate OTP",style: TextStyle(color: Colors.white,fontSize: 20))),
              ),
          
          ],
        ),
      ),
    );
  }
}
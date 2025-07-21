import 'package:ecommerce_app/addressandpayment/summarypage.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Addresspage extends StatefulWidget {
  const Addresspage({super.key});

  @override
  State<Addresspage> createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  int? selectedvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 106,
                  ),
                  Text(
                    "Select address",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 28),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Symbols.package_2,
                          color: Color.fromARGB(255, 5, 60, 106)),
                      Text(
                        "Address",
                        style:
                            TextStyle(color: Color.fromARGB(255, 5, 60, 106)),
                      ),
                    ],
                  ),
                  Text(
                    "---------------",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Column(
                    children: [
                      Icon(
                        Symbols.event_available,
                        color: Colors.grey,
                      ),
                      Text("Summary", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Text(
                    "---------------",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Column(
                    children: [
                      Icon(
                        Symbols.assured_workload,
                        color: Colors.grey,
                      ),
                      Text(
                        "Payment",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Symbols.add,
                    color: Colors.black,
                  ),
                  Text(
                    "Add Address",
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 7, 77, 133)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Colors.white, border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 100,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 5),
                              child: Text("David       +91987652341",style: TextStyle(fontSize: 15),),
                            )),
                        SizedBox(
                          width: 190,
                        ),
                        Radio(
                            value: 2,
                            groupValue: selectedvalue,
                            onChanged: (vlaue) {
                              setState(() {
                                selectedvalue = vlaue!;
                              });
                            }),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("112/B 2nd Floor,"),
                              Text("Northstreet,"),
                              Text("chettikulam,Nagercoil-03"),
                              Text("kanyakumari"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 350,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Colors.white, border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 100,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 5),
                              child: Text("David       +91987652341",style: TextStyle(fontSize: 15),),
                            )),
                        SizedBox(
                          width: 190,
                        ),
                        Radio(
                            value: 1,
                            groupValue: selectedvalue,
                            onChanged: (vlaue) {
                              setState(() {
                                selectedvalue = vlaue!;
                              });
                            }),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("112/B 2nd Floor,"),
                              Text("Northstreet,"),
                              Text("chettikulam,Nagercoil-03"),
                              Text("kanyakumari"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
              SizedBox(height: 60,),
            Container(
              width: 340,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,backgroundColor: const Color.fromARGB(255, 5, 58, 101),foregroundColor: Colors.white),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Summarypage()));
                }, child: Text("Continue",style: TextStyle(fontSize: 18),)),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/addressandpayment/paymentpage.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Summarypage extends StatefulWidget {
  const Summarypage({super.key});

  @override
  State<Summarypage> createState() => _SummarypageState();
}

class _SummarypageState extends State<Summarypage> {
  int? selectedvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Summary",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 28),
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
                      style: TextStyle(color: Color.fromARGB(255, 5, 60, 106)),
                    ),
                    Column(
                      children: [
                        Icon(Symbols.event_available,
                            color: Color.fromARGB(255, 5, 60, 106)),
                        Text("Summary",
                            style: TextStyle(
                                color: Color.fromARGB(255, 5, 60, 106))),
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
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Product details",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: SizedBox(
                        height: 110, child: Image.asset("assets/mobile3.png")),
                  ),
                  Column(
                    children: [
                      Container(
                          width: 142, child: Text("Galaxy M33 (4GB | 64 GB )")),
                      Text("AED 42900 AED74999")
                    ],
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Icon(
                          Icons.delete_sharp,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Container(
                                height: 22,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 221, 218, 218),
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "1",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Container(
                                height: 22,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 221, 218, 218),
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 360,
                height: 0.5,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Container(
                    child: SizedBox(
                        height: 110, child: Image.asset("assets/mobile2.png")),
                  ),
                  Column(
                    children: [
                      Container(
                          width: 142, child: Text("Galaxy M33 (4GB | 64 GB )")),
                      Text("AED 42900 AED74999")
                    ],
                  ),
                  SizedBox(
                    width: 0,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Icon(
                          Icons.delete_sharp,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Container(
                                height: 22,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 221, 218, 218),
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                "1",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Container(
                                height: 22,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 221, 218, 218),
                                    border: Border.all(color: Colors.grey)),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 10,
                width: 390,
                color: const Color.fromARGB(255, 228, 226, 226),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Cart summary",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cart Total",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Discount",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Other Charges",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Column(
                    children: [
                      Text("AED 42,900.000"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("AED 8,900.000"),
                      SizedBox(
                        height: 8,
                      ),
                      Text("AED 1,900.000"),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 360,
                height: 0.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text(
                        "Total Price",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Text(
                      "AED 42,900.000",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 9, 92, 160)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                width: 390,
                color: const Color.fromARGB(255, 228, 226, 226),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 200,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 13),
                              child: Text(
                                "Shipping address",
                                style: TextStyle(fontSize: 17),
                              ),
                            )),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          "Change",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 6, 94, 166)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 10,
                width: 390,
                color: const Color.fromARGB(255, 228, 226, 226),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 340,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color.fromARGB(255, 5, 58, 101),
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Paymentpage()));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

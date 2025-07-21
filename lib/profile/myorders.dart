import 'package:ecommerce_app/profile/orderdetails.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Myorders extends StatefulWidget {
  const Myorders({super.key});

  @override
  State<Myorders> createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
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
                    width: 110,
                  ),
                  Text(
                    "My Orders",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 205,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: const Color.fromARGB(255, 253, 251, 251),
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                            child: Image.asset(
                          "assets/orderimg.png",
                          height: 100,
                        )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 220, 218, 218),
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order ID:"),
                            Text("123AS301"),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "tue, 10 oct 2023",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("AED 24,999.00"),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
                Positioned(
                  top: 80,
                  left: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Samsung Galaxy S22 Ultra 5G",
                              style: TextStyle(fontSize: 14)),
                          Padding(
                            padding: const EdgeInsets.only(right: 26),
                            child: Text("(Phantom White,12GB-256GB)",
                                style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        const Color.fromARGB(255, 85, 84, 84))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 130,
                    left: 120,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              width: 100,
                              child: Text("Qty: 2",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12))),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "view details",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 5, 70, 123),
                                    fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: Icon(
                                  Symbols.expand_circle_right,
                                  color: const Color.fromARGB(255, 2, 57, 101),
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 185,
                    left: 270,
                    child: Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 170, 234, 172),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Delivered",
                        style: TextStyle(color: Colors.green),
                      )),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 205,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: const Color.fromARGB(255, 253, 251, 251),
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                            child: Image.asset(
                          "assets/orderimg.png",
                          height: 100,
                        )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 220, 218, 218),
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order ID:"),
                            Text("123AS301"),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "tue, 10 oct 2023",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("AED 24,999.00"),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
                Positioned(
                  top: 80,
                  left: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Samsung Galaxy S22 Ultra 5G",
                              style: TextStyle(fontSize: 14)),
                          Padding(
                            padding: const EdgeInsets.only(right: 26),
                            child: Text("(Phantom White,12GB-256GB)",
                                style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        const Color.fromARGB(255, 85, 84, 84))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 130,
                    left: 120,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              width: 100,
                              child: Text("Qty: 2",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12))),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderdetails()));
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "view details",
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 5, 70, 123),
                                      fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.5),
                                  child: Icon(
                                    Symbols.expand_circle_right,
                                    color: const Color.fromARGB(255, 2, 57, 101),
                                    size: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 185,
                    left: 270,
                    child: Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                          color:const Color.fromARGB(255, 134, 193, 242),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Ordered",
                        style: TextStyle(color: const Color.fromARGB(255, 5, 65, 114)),
                      )),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 205,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: const Color.fromARGB(255, 253, 251, 251),
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Container(
                            child: Image.asset(
                          "assets/orderimg.png",
                          height: 100,
                        )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 220, 218, 218),
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order ID:"),
                            Text("123AS301"),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "tue, 10 oct 2023",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("AED 24,999.00"),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
                Positioned(
                  top: 80,
                  left: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Samsung Galaxy S22 Ultra 5G",
                              style: TextStyle(fontSize: 14)),
                          Padding(
                            padding: const EdgeInsets.only(right: 26),
                            child: Text("(Phantom White,12GB-256GB)",
                                style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        const Color.fromARGB(255, 85, 84, 84))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 130,
                    left: 120,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                              width: 100,
                              child: Text("Qty: 2",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12))),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "view details",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 5, 70, 123),
                                    fontSize: 15),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.5),
                                child: Icon(
                                  Symbols.expand_circle_right,
                                  color: const Color.fromARGB(255, 2, 57, 101),
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: 185,
                    left: 270,
                    child: Container(
                      width: 80,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 233, 171, 167),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Cancelled",
                        style: TextStyle(color: Colors.red),
                      )),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

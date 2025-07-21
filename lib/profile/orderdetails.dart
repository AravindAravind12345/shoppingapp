import 'package:flutter/material.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Row(
                    children: [Text("Order ID : 123AS201",style: TextStyle(fontSize: 15.5),), 
                    SizedBox(width: 140,),
                    Text("Delivered",style: TextStyle(color: const Color.fromARGB(255, 46, 148, 50)),)],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("tue, 10 oct 2023",style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 20),
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
                      height: 110, child: Image.asset("assets/orderimg.png")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Container(
                          width: 142, child: Text("Galaxy M33 (4GB | 64 GB )")),
                      Text("AED 42900 AED74999")
                    ],
                  ),
                ),
                SizedBox(
                  width: 0,
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
                      height: 110,
                      child: Image.asset(
                        "assets/mobile2.png",
                        height: 80,
                      )),
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
                        "VAT",
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
                    style:
                        TextStyle(color: const Color.fromARGB(255, 9, 92, 160)),
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
           
           
           
          ],
        ),
      ),
    );
  }
}

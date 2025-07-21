import 'package:ecommerce_app/mainpages/cartpage.dart';
import 'package:flutter/material.dart';

class Productviewpage extends StatefulWidget {
  const Productviewpage({super.key});

  @override
  State<Productviewpage> createState() => _ProductviewpageState();
}

class _ProductviewpageState extends State<Productviewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18,top: 25),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 300,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
                    },
                    child: Icon(Icons.shopping_cart_outlined))
                ],
              ),
            ),
            SizedBox(height: 230, child: Image.asset("assets/mobile3.png")),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "Galaxy M33 (4GB)",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("| 64 GB", style: TextStyle(fontSize: 15))
                    ],
                  ),
                ),
                SizedBox(width: 140),
                Column(
                  children: [
                    Text("AED 42900 ", style: TextStyle(fontSize: 15)),
                    Text(
                      "AED74999",
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 400,
                height: 0.5,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Product Details",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: Text(
                  "The Samsung Galaxy M33 5G runs One UI 4.1 is based on Android 12 and packs 128GB of inbuilt storage. Connectivity options on the Samsung Galaxy M33 5G include Wi-Fi 802.11 a/b/g/n/ac and USB Type-C with active 4G on both SIM cards",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Key Specifications",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.task_alt_rounded,
                      size: 15,
                      color: const Color.fromARGB(255, 11, 87, 150),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 290,
                    child: Text(
                        "10mp + 50mp + 12mp Rear camera | 10mpFront Camera"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.task_alt_rounded,
                      size: 15,
                      color: const Color.fromARGB(255, 11, 87, 150),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 290,
                    child: Text(
                        "10mp + 50mp + 12mp Rear camera | 10mpFront Camera"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.task_alt_rounded,
                      size: 15,
                      color: const Color.fromARGB(255, 11, 87, 150),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 290,
                    child: Text("4400 MAH Battery capacity"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Row(
                children: [
                  Container(
                    width: 149.96,
                    height: 44.14,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            foregroundColor: Colors.black,
                            backgroundColor:
                                const Color.fromARGB(255, 225, 223, 223)),
                        onPressed: () {},
                        child: Text("Buy Now")),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                     width: 149.96,
                    height: 44.14,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 4, 43, 75)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));
                        },
                        child: Text("Add to Cart")),
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

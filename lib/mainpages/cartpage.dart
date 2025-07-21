import 'package:ecommerce_app/addressandpayment/addresspage.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
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
                    width: 135,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
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
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
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
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
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
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
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
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
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
              height: 10,
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
                        style: TextStyle(color: Colors.grey,fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Discount",
                        style: TextStyle(color: Colors.grey,fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Other Charges",
                        style: TextStyle(color: Colors.grey,fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
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
                      height: 10,
                    ),
                    Text("AED 8,900.000"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("AED 1,900.000"),
                    SizedBox(
                      height: 10,
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
                      style: TextStyle(color: Colors.grey,fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text("AED 42,900.000",style: TextStyle(color: const Color.fromARGB(255, 9, 92, 160)),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: Container(
                width: 340,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))  ,backgroundColor: const Color.fromARGB(255, 6, 58, 101),foregroundColor: Colors.white),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Addresspage()));
                  }, child: Text("Checkout",style: TextStyle(fontSize: 17),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/addressandpayment/orderplaced.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  int? paymentvalue;
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
                    width: 115,
                  ),
                  Text(
                    "Payment",
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
                    style: TextStyle(color: Color.fromARGB(255, 5, 60, 106)),
                  ),
                  Column(
                    children: [
                      Icon(
                        Symbols.assured_workload,
                        color: Color.fromARGB(255, 5, 60, 106),
                      ),
                      Text(
                        "Payment",
                        style:
                            TextStyle(color: Color.fromARGB(255, 5, 60, 106)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                width: 350,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text("Credit card/Debit card",style: TextStyle(fontSize: 17),),
                        SizedBox(
                          width: 90,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ))),
            ExpansionTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: Text("UPI"),
              children: [
                RadioListTile(
                    shape: Border.all(
                        color: const Color.fromARGB(255, 225, 220, 220)),
                    
                    title: Text("Phone pay"),
                    
                    value: 1,
                    groupValue: paymentvalue,
                    onChanged: (value) {
                      setState(() {
                        paymentvalue = value!;
                      });
                    }),
                RadioListTile(
                    shape: Border.all(
                        color: const Color.fromARGB(255, 225, 220, 220)),
                    title: Text("Google pay"),
                    value: 2,
                    groupValue: paymentvalue,
                    onChanged: (value) {
                      setState(() {
                        paymentvalue = value!;
                      });
                    }),
                RadioListTile(
                    shape: Border.all(
                        color: const Color.fromARGB(255, 225, 220, 220)),
                    title: Text("Pay via upi"),
                    
                    value: 3,
                    groupValue: paymentvalue,
                    onChanged: (value) {
                      setState(() {
                        paymentvalue = value!;
                      });
                    })
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 350,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text("Net Banking",style: TextStyle(fontSize: 17),),
                        SizedBox(
                          width: 172,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 350,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text("Cash on Delivery",style: TextStyle(fontSize: 17),),
                        SizedBox(
                          width: 134,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromARGB(255, 6, 60, 105),
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Orderplaced()));
                  },
                  child: Text("Pay Now",style: TextStyle(fontSize: 17),)),
            )
          ],
        ),
      ),
    );
  }
}

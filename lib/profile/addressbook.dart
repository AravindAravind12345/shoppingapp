import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Addressbook extends StatefulWidget {
  const Addressbook({super.key});

  @override
  State<Addressbook> createState() => _AddressbookState();
}

class _AddressbookState extends State<Addressbook> {
  int? selectedvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Address Book",
                      style: TextStyle(fontSize: 18.5),
                    )
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
                    TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                              ),
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 600,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 150),
                                              child: Text(
                                                "Add Address",
                                                style: TextStyle(fontSize: 17),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 96.5,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 20),
                                                child: Icon(Icons.close_rounded),
                                              )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 25, top: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Name",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 23, right: 23),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "Aravind R",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 25, top: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Mobile No",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 23, right: 23),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "+91 733999837",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                             
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 25, top: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Flat / House no, Building",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 23, right: 23),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "Anna nagar",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                             
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 25, top: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Street,Village",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 23, right: 23),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "Tuticorin",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                            
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 25, top: 10),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Pincode",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 23, right: 23),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "6250003",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                           
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Container(
                                          width: 340,
                                          height: 55,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 5, 58, 101),
                                                  foregroundColor:
                                                      Colors.white),
                                              onPressed: () {},
                                              child: Text(
                                                "Continue",
                                                style: TextStyle(fontSize: 18),
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Text("Add Address",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 7, 77, 133))))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 350,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 100,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                child: Text(
                                  "David       +91987652341",
                                  style: TextStyle(fontSize: 15),
                                ),
                              )),
                          SizedBox(
                            width: 190,
                          ),
                          Icon(Icons.border_color, color: Colors.grey),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.delete_sharp,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 300,
                                  height: 0.5,
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: 1,
                                        groupValue: selectedvalue,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedvalue = value!;
                                          });
                                        }),
                                    Text("Set as default address")
                                  ],
                                )
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
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 100,
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 5),
                                child: Text(
                                  "David       +91987652341",
                                  style: TextStyle(fontSize: 15),
                                ),
                              )),
                          SizedBox(
                            width: 190,
                          ),
                          Icon(
                            Icons.border_color,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.delete_sharp,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 300,
                                  height: 0.5,
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    Radio(
                                        value: 2,
                                        groupValue: selectedvalue,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedvalue = value!;
                                          });
                                        }),
                                    Text("Set as default address")
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

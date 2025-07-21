import 'package:ecommerce_app/mainpages/mobilespage.dart';
import 'package:ecommerce_app/mainpages/mobilevalues.dart';
import 'package:ecommerce_app/mainpages/productviewpage.dart';
import 'package:flutter/material.dart';

class Mobilespages extends StatefulWidget {
  const Mobilespages({super.key});

  @override
  State<Mobilespages> createState() => _MobilespagesState();
}

class _MobilespagesState extends State<Mobilespages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 25, bottom: 25),
              child: Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "What are you looking for...",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 241, 234, 234),
                          fontSize: 15),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 5, 43, 73),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35))),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 210,
                      mainAxisSpacing: 20),
                  itemCount: mobilevalues.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 215, 215)),
                          color: const Color.fromARGB(255, 254, 250, 250),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 130,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Productviewpage()));
                                  },
                                  child: Image.asset(
                                      mobilevalues[index].imgs.toString()))),
                          Container(
                            width: 200,
                            height: 0.5,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7, top: 4),
                            child: Text(mobilevalues[index].txt1.toString()),
                          ),
                          Container(
                            width: 200,
                            height: 0.2,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9, top: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  mobilevalues[index].txt2.toString(),
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}

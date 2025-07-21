import 'package:ecommerce_app/categories/categories.dart';
import 'package:ecommerce_app/mainpages/cartpage.dart';
import 'package:ecommerce_app/mainpages/gridvalues.dart';
import 'package:ecommerce_app/mainpages/listvalues.dart';
import 'package:ecommerce_app/mainpages/mobilespage.dart';
import 'package:ecommerce_app/mainpages/productviewpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> carouselItems = [
    Padding(
      padding:  EdgeInsets.all(8),
      child: Container(
        width: 600,
        height: 600,
        child: Image.asset("assets/carousel.png"),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          child: const Text(
                            "Welcome back!",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                        Container(
                            child: const Text(
                          "Lorem ipsum",
                          style: TextStyle(fontSize: 18),
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 206,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cartpage()));
                      },
                      child: const Icon(Icons.shopping_cart_outlined))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: "What are you looking for...",
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 241, 234, 234),
                            fontSize: 15),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 5, 43, 73),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35))),
                  ),
                ),
              ),
              CarouselSlider(
                  items: carouselItems,
                  options: CarouselOptions(
                      height: 150, enableInfiniteScroll: true, autoPlay: true)),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 57, 101), fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    width: 210,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                    },
                    child: const Text("View all",
                        style: TextStyle(color: Color.fromARGB(255, 4, 65, 114))),
                  ),
                ],
              ),
              Container(
                color: const Color.fromARGB(255, 246, 244, 244),
                child: SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ListView.builder(
                        itemCount: Values.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                                width: 83,
                                height: 81,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 70,
                                        height: 70,
                                        child: Image.asset(
                                            Values[index].images.toString())),
                                    Container(
                                      child: Text(
                                        Values[index].text.toString(),
                                        style: const TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const Text(
                      "Latest mobiles",
                      style: TextStyle(
                          color: Color.fromARGB(255, 6, 62, 108), fontSize: 17),
                    ),
                    const SizedBox(width: 200),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mobilespages()));
                      },
                      child: const Text(
                        "View all",
                        style:
                            TextStyle(color: Color.fromARGB(255, 6, 62, 108)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: SizedBox(
                height: 400,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Productviewpage()));
                  },
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 18,
                              crossAxisSpacing: 25),
                      itemCount: gridoutput.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                            width: 180,
                            height: 240,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 216, 215, 215)),
                                color: const Color.fromARGB(255, 254, 250, 250),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                      gridoutput[index].image.toString()),
                                ),
                                Container(
                                  width: 180,
                                  height: 0.5,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    child: Text(
                                      gridoutput[index].text.toString(),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  height: 0.2,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          gridoutput[index].text2.toString(),
                                          style: const TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

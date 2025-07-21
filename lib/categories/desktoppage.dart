import 'package:ecommerce_app/categories/categoriesval.dart';
import 'package:ecommerce_app/categories/desktopval.dart';
import 'package:ecommerce_app/categories/laptoppage.dart';
import 'package:flutter/material.dart';

class Desktoppage extends StatefulWidget {
  const Desktoppage({super.key});

  @override
  State<Desktoppage> createState() => _DesktoppageState();
}

class _DesktoppageState extends State<Desktoppage> {
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
                    width: 85,
                  ),
                  Text(
                    "Desktop & Laptop",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 700,
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                child: GridView.builder(
                  itemCount: val.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,crossAxisSpacing: 20,
                        mainAxisExtent: 140),
                    itemBuilder: (BuildContext,int index) {
                
                      return Container(
                
                        decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 198, 197, 197)),borderRadius: BorderRadius.circular(10),color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Laptoppage()));
                                },
                                child: Container(child: Image.asset(val[index].imgs.toString()))),
                              Container(child: Text(val[index].text.toString()))
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

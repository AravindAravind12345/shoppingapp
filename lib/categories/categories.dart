import 'package:ecommerce_app/bottomnav/bottomnavigation.dart';
import 'package:ecommerce_app/categories/categoriesval.dart';
import 'package:ecommerce_app/categories/desktoppage.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavigation()));
                    },
                    child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 18.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 700,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                child: GridView.builder(
                  itemCount: value.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 140,
                        
                        ),
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                              decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 209, 208, 208)) , color: Colors.white, borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  children: [
                                    Container(child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Desktoppage()));
                                      },
                                      child: Image.asset(value[index].img.toString()))),
                                    Container(child: Text(value[index].text.toString()),)
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

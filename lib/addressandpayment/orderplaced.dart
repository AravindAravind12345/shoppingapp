
import 'package:ecommerce_app/bottomnav/bottomnavigation.dart';
import 'package:ecommerce_app/mainpages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Orderplaced extends StatefulWidget {
  const Orderplaced({super.key});

  @override
  State<Orderplaced> createState() => _OrderplacedState();
}

class _OrderplacedState extends State<Orderplaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(Symbols.check_circle,size: 80,color: const Color.fromARGB(255, 62, 178, 66),)),
                        SizedBox(height: 20,),

            Text("Your order is successfully placed",style: TextStyle(fontSize: 18),),
            SizedBox(height: 20,),
            Container(
              width: 250,
              child: Text("    Lorem ipsum dolor sit amet,  erat porttitor eget osuscipit laoreet acer")),

              Padding(
                padding: const EdgeInsets.only(top:28,left: 40),
                child: Row(
                  children: [
                    SizedBox(
                      width: 149.56,
                      height: 55,
                      child: ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: const Color.fromARGB(255, 9, 67, 114),side: BorderSide(color: const Color.fromARGB(255, 9, 67, 114),),  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavigation()));
                        }, child: Row(
                          children: [
                            Icon(Symbols.stacks),
                            Text("Back to Home",style: TextStyle(fontSize: 12),),
                          
                
                          ],
                        )),
                    ),

                      SizedBox(width: 25,),
                              SizedBox(
                  width: 149.56,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 9, 67, 114),side: BorderSide(color: const Color.fromARGB(255, 9, 67, 114),),  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                    onPressed: (){}, child: Row(
                      children: [
                        Text("View Order",style: TextStyle(fontSize: 12),),
                         Icon(Symbols.arrow_forward),
                      ],
                    )),
                ),
                  ],
                ),
              ),



          ],
        ),
      ),
    );
  }
}  
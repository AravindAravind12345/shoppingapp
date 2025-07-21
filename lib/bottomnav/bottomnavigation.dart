import 'package:ecommerce_app/categories/categories.dart';
import 'package:ecommerce_app/legalpolices/legalpolicies.dart';
import 'package:ecommerce_app/mainpages/homepage.dart';
import 'package:ecommerce_app/profile/profilepage.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int currentindex = 0;

  final pages = [Homepage(), Categories(), Profilepage(), Legalpolicies()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        
          currentIndex: currentindex,
          onTap: (newindex) {
            setState(() {
              currentindex = newindex;
            });
          },
        
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 4, 56, 99),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          
          
          items: const [
            
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.interests), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    );
  }
}

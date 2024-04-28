// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_recipe/home/mybotomnavbar.dart';
import 'package:food_recipe/screens/Screen2.dart';
import 'package:food_recipe/screens/Screen3.dart';
import 'package:food_recipe/screens/screen1.dart';
import 'package:food_recipe/screens/screen4.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int myIndex = 0;  
  List<Widget> screens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
    

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          bottomNavigationBar:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: GNav(
        tabs: [
          GButton(
            icon: Iconsax.home,
            text: 'Home',
            iconSize: 30,
          ),
          GButton(icon: Iconsax.heart, text: 'Favorit', iconSize: 30),
          GButton(icon: Iconsax.calendar, text: 'Mael Plan', iconSize: 30),
          GButton(icon: Iconsax.setting, text: 'Settings', iconSize: 30),
        ],
        onTabChange: (index) {
          setState(() {
             myIndex = index;
          });
         
        },
        selectedIndex: myIndex,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        style: GnavStyle.google,
        gap: 4,
        padding: EdgeInsets.all(16),
        tabBackgroundColor: Colors.grey.shade400, tabActiveBorder: Border(),
      ),
    ),
          body: Center(
            child: IndexedStack( 
              index: myIndex, 
              children:  screens ,
            ),
            
          ),
        ),
      ),
    );
  }
}

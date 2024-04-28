// ignore: camel_case_types_whole_life

// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:food_recipe/screens/screen1.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class myBotomnavbar extends StatefulWidget {
  const myBotomnavbar({super.key});

  @override
  State<myBotomnavbar> createState() => _myBotomnavbarState();
}

class _myBotomnavbarState extends State<myBotomnavbar> {
  @override
  Widget build(BuildContext context) {
  
     int myIndex = 0;
    return Padding(
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
        tabBackgroundColor: Colors.grey.shade400,
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_recipe/home/home_screen.dart';

void main() => runApp( Myapp());


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
      
      
    );
  }
}


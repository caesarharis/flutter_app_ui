// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_recipe/models/foods.dart';
import 'package:food_recipe/widgets/food_card.dart';
import 'package:food_recipe/widgets/quick_appbar.dart';

class quickFood extends StatefulWidget {
  const quickFood({super.key});

  @override
  State<quickFood> createState() => _quickFoodState();
}

class _quickFoodState extends State<quickFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                quickAppbar() ,
                SizedBox( height: 20,) , 
                GridView.builder( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 20 , mainAxisSpacing: 20, 
                  ),
                  itemCount: foods.length,
                  itemBuilder: (BuildContext context, int index) {
                    return foodCard( foods: foods[index]);
                  },
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}



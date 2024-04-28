// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:food_recipe/models/categories.dart';

class categoriesApp extends StatelessWidget {
  const categoriesApp({
    super.key,
    required this.currentcat,
  });

  final String currentcat;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        categories.length,
        (index) => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: currentcat == categories[index]
                  ? Colors.greenAccent.shade100
                  : Colors.white),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.only(right: 10),
          child: Text(
            categories[index],
            style: TextStyle( color: currentcat == categories[index]
                  ? Colors.black
                  : Colors.grey),
          ),
        ),
      )),
    );
  }
}
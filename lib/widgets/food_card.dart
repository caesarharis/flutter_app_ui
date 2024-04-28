// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_recipe/models/foods.dart';
import 'package:food_recipe/screens/recipe_screen.dart';
import 'package:iconsax/iconsax.dart';

class foodCard extends StatelessWidget {
  final food foods;
  const foodCard({super.key, required this.foods});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
       MaterialPageRoute(builder: (context) => RecipeScreen(foods: foods),)),

      child: SizedBox(
        width: double.infinity,
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                margin: EdgeInsets.only(right: 10),
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(foods.image), fit: BoxFit.fill)),
              ),
              Text(
                foods.name,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Iconsax.flash_1,
                    size: 18,
                    color: Colors.grey,
                  ),
                  Text(
                    '${foods.cal} Cal',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    '.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Iconsax.clock,
                    size: 18,
                    color: Colors.grey,
                  ),
                  Text(
                    '${foods.time} Mins/Hrs ',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              Spacer(),
              Row( 
                children: [
                  Icon(
                    Iconsax.star5,
                    size: 17,
                    color: Colors.yellow.shade700,
                  ) , 
                  SizedBox(width: 9,) , 
                  Text('${foods.rate}/5' ,  style: TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 10, color: Colors.grey),), 
                   SizedBox(width: 8,) , 
                   Text( '(${foods.reviews} Reviews)' ,
                    style: TextStyle(color: Colors.grey.shade400,
                     fontSize: 12 , fontWeight: FontWeight.bold),)
                ],
              ) , 
               
              
            ],
          ),
          Positioned(
              top: 0.0,
              right: 6,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                    elevation: 0.9,
                    backgroundColor: Colors.white,
                    fixedSize: Size(10, 10)),
                icon:foods.isliked? 
                Icon(Iconsax.heart5 , 
                color: Colors.redAccent,) : Icon(Iconsax.heart),
                iconSize: 20,
              ))
        ]),
      ),
    );
  }
}

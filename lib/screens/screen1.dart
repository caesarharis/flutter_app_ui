// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types
import 'package:flutter/material.dart';
import 'package:food_recipe/models/foods.dart';
import 'package:food_recipe/screens/quikfood_screen.dart';
import 'package:food_recipe/screens/recipe_screen.dart';
import 'package:food_recipe/widgets/categories.dart';
import 'package:iconsax/iconsax.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String currentcat = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              homeAppbar(),
              SizedBox(
                height: 20,
              ),
              homesearchbar(),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/explore.png'))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Categoris',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              categoriesApp(currentcat: currentcat),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quick & Esay',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  TextButton(
                      onPressed: () => Navigator.push(context,
                       MaterialPageRoute(builder: (context) => quickFood() )),
                      child: Text(
                        'View All',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 15),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        foods.length,
                        (index) => GestureDetector(
                          onTap: () => Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> RecipeScreen(foods: foods[index]))),
                          child: Container(
                                width: 200,
                                child: Stack(children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        width: double.infinity,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    foods[index].image),
                                                fit: BoxFit.fill)),
                                      ),
                                      Text(
                                        foods[index].name,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Iconsax.flash_1,
                                            size: 18,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            '${foods[index].cal} Cal',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.grey),
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
                                            '${foods[index].time} Mins/Hrs ',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.grey),
                                          ),
                                        ],
                                      )
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
                                        icon: Icon(Iconsax.heart),
                                        iconSize: 20,
                                      ))
                                ]),
                              ),
                        ))),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

// ======================================================================================

class homesearchbar extends StatelessWidget {
  const homesearchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          children: [
            Icon(Iconsax.search_favorite_1),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: " Search Any Recipe ...",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class homeAppbar extends StatelessWidget {
  const homeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(" What Are You\n Cooking Today ?",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1,
            )),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.notification,
            size: 40,
          ),
          style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60))),
        )
      ],
    );
  }
}

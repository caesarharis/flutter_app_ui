// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/models/foods.dart';
import 'package:iconsax/iconsax.dart';

class RecipeScreen extends StatefulWidget {
  final food foods;

  // ignore: prefer_const_constructors_in_immutables
  const RecipeScreen({super.key, required this.foods});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  final int currentnum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container( padding: EdgeInsets.all(10),
        child: Row( 
          children: [
         Expanded( flex: 6,
          child: ElevatedButton(onPressed: (){},
           style: ButtonStyle( backgroundColor:MaterialStatePropertyAll( Color(0xff2f7162))) ,
          child: Text('Let\'s Us Cooking',style: TextStyle( color: Colors.white,
           fontSize:15 , fontWeight: FontWeight.bold ),))) , 
          SizedBox( width: 10,) , 
          IconButton(onPressed: (){},
           icon: widget.foods.isliked? Icon(Iconsax.heart5 , size: 20, color: Colors.redAccent,) :  Icon(Iconsax.heart , size: 20,)  ,
           style: IconButton.styleFrom( side: BorderSide( 
            color: Colors.grey , 
            width: 2 ,
           )) ,)
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: MediaQuery.of(context).size.width - 15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.foods.image),
                          fit: BoxFit.fill)),
                )),
                Positioned(
                    top: 50,
                    left: 10,
                    right: 10,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            CupertinoIcons.chevron_back,
                            size: 40,
                          ),
                          color: Colors.black,
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fixedSize: Size(50, 50)),
                        ),
                        SizedBox(
                          width: 260,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Iconsax.notification,
                            size: 40,
                          ),
                          color: Colors.black,
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              fixedSize: Size(50, 50)),
                        ),
                      ],
                    )),
                Positioned(
                    right: 0,
                    left: 0,
                    top: MediaQuery.of(context).size.width - 30,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                    ))
              ],
            ),
            Center(
              child: Container(
                width: 50,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.foods.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.flash_1,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Text(
                        '${widget.foods.cal} Cal',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 6,
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
                        '${widget.foods.time} Mins/Hrs ',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.star5,
                        size: 20,
                        color: Colors.yellow.shade700,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        '${widget.foods.rate}/5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey.shade500),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '(${widget.foods.reviews} Reviews)',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ingredients',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                border: Border.all(width: 2.5),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (currentnum != 1) {
                                        setState(() {
                                          currentnum - 1;
                                        });
                                      }
                                    },
                                    icon: Icon(Iconsax.minus)),
                                Text(
                                  '$currentnum',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {
                                      if (currentnum != 1) {
                                        setState(() {
                                          currentnum + 1;
                                        });
                                      }
                                    },
                                    icon: Icon(Iconsax.add)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'How Many Servings ?',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column( 
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage(widget.foods.image))),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            widget.foods.name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '4000g',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ), 
                      Divider( height: 10, color: Colors.grey,) ,
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage(widget.foods.image))),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            widget.foods.name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '4000g',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ), 
                      Divider( height: 10, color: Colors.grey.shade300,) ,  
                    ],
                  ) , 
                  SizedBox( height:  20 ,) , 

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

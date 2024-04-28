// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class quickAppbar extends StatelessWidget {
  const quickAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: const Size(50, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              iconSize: 40,
            ),
            color: Colors.black,
            icon: Icon(CupertinoIcons.chevron_back)),
           Spacer(),
        Text(
          ' Quick & Fast',
          style:
              TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ) , 
           Spacer(),
    
      IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(55, 55),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              iconSize: 40,
            ),
            color: Colors.black,
            icon: Icon(Iconsax.notification)),
      ],
    );
  }
}
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget appHomebar() {
  return Row(
    children: [
      const Text(" What Are You\n Cooking Today ?",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            height: 1,
          )),
      const Spacer(),
      IconButton(
        onPressed: () {},
        icon: const Icon(
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

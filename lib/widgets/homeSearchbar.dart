import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget homeSearchbar() {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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

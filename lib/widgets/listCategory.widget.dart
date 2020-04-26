import 'package:flutter/material.dart';
import 'CategoryItem.widget.dart';

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryItem("assets/Icon_Devices.png"),
        categoryItem("assets/Icon_Gaming.png"),
        categoryItem("assets/Icon_Gadgets.png"),
        categoryItem("assets/Icon_Mens_Shoe.png"),
        categoryItem("assets/Icon_Womens_Shoe.png"),
        categoryItem("assets/Icon_Devices.png"),
        categoryItem("assets/Icon_Devices.png"),
        categoryItem("assets/Icon_Gaming.png"),
        categoryItem("assets/Icon_Gadgets.png"),
        categoryItem("assets/Icon_Mens_Shoe.png"),
        categoryItem("assets/Icon_Womens_Shoe.png"),
        categoryItem("assets/Icon_Devices.png"),
      ],
    ),
  );
}

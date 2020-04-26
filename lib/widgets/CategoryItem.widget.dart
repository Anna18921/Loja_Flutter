import 'package:flutter/material.dart';

Widget categoryItem(image) {
  return Container(
    height: 70,
    width: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(1, 1),
            blurRadius: 5.0,
            spreadRadius: 2,
          ),
        ]),
    child: Center(
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    ),
  );
}

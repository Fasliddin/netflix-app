import 'package:flutter/material.dart';
import 'package:netflix/data.dart/colors.dart';

Widget first() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: backgroundColor,
      image: DecorationImage(
        image: AssetImage("assets/images/movie.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget second() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue,
    ),
  );
}

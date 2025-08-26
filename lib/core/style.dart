import 'package:flutter/material.dart';

const mainColor = Color(0xff100B20);
const kTranstionDuration = Duration(microseconds: 100);
const kGtSectraFine = "GT Sectra Fine";

class Style {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
    decoration: TextDecoration.none,
  );
  static const textStyle12 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none,
      letterSpacing: 0.00);
  static const textStyle14 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none,
      letterSpacing: 0.00);

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
  );
}

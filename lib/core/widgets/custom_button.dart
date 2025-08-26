import 'package:book_app/core/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.text,
      required this.borderRadius,
      required this.color});
  final Color backGroundColor;
  final Color color;
  final String text;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      child: Text(
        text,
        style: Style.textStyle16
            .copyWith(color: color, fontWeight: FontWeight.bold),
      ),
    );
  }
}
/*BorderRadiusDirectional.only(
                      topEnd: Radius.circular(12),
                      bottomEnd: Radius.circular(12))*/

import 'package:book_app/core/style.dart';
import 'package:flutter/material.dart';

class RattingItem extends StatelessWidget {
  const RattingItem({super.key, this.mainAxisAlignment});
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.star_border,
          color: Color(0xffFFDD4F),
          size: 18,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '4.8',
          style: Style.textStyle14.copyWith(color: Colors.white),
        ),
        const SizedBox(
          width: 4,
        ),
        Text('(2222)', style: Style.textStyle14.copyWith(color: Colors.white))
      ],
    );
  }
}

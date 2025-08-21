import 'package:book_app/core/style.dart';
import 'package:flutter/material.dart';

class RattingItem extends StatelessWidget {
  const RattingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star_border,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          '4.8',
          style: Style.textStyle18,
        ),
        SizedBox(
          width: 4,
        ),
        Text('(2222)', style: Style.textStyle16)
      ],
    );
  }
}

import 'package:book_app/core/style.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLike extends StatelessWidget {
  const YouCanAlsoLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            textAlign: TextAlign.left,
            'You can also like',
            style: Style.textStyle12
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

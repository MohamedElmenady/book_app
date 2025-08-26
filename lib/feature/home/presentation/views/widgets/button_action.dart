import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              color: Colors.black,
              backGroundColor: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(12),
                  bottomStart: Radius.circular(12)),
              text: '199 LE',
            ),
          ),
          Expanded(
            child: CustomButton(
              color: Colors.white,
              backGroundColor: Colors.brown,
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(12), bottomEnd: Radius.circular(12)),
              text: 'Free Book',
            ),
          ),
        ],
      ),
    );
  }
}

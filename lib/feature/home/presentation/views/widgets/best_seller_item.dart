import 'package:book_app/core/assets.dart';
import 'package:book_app/core/style.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(Assets.testImage),
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'EkvmKIM EVlmpo EPInklf MoooeprogkPORGKp;lb',
                  style: Style.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text(
                'rkvmapo',
                style: Style.textStyle14,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    '11.99 LE',
                    style:
                        Style.textStyle20.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  const RattingItem()
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

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

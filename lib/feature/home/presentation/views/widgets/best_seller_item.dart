import 'package:book_app/core/assets.dart';
import 'package:book_app/core/routes.dart';
import 'package:book_app/core/style.dart';
import 'package:book_app/feature/home/presentation/views/widgets/ratting_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.bookDetails);
      },
      child: Padding(
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
                    style:
                        Style.textStyle20.copyWith(fontFamily: kGtSectraFine),
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
                      style: Style.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
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
      ),
    );
  }
}

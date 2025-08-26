import 'package:book_app/core/style.dart';
import 'package:book_app/feature/home/presentation/views/widgets/button_action.dart';
import 'package:book_app/feature/home/presentation/views/widgets/custom_AppBar_book_details.dart';
import 'package:book_app/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:book_app/feature/home/presentation/views/widgets/ratting_item.dart';
import 'package:book_app/feature/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:book_app/feature/home/presentation/views/widgets/you_can_also_like.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBarBookDetails(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.3),
              child: const CustomListViewItem(),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('eokfOKFOfl',
                style: Style.textStyle30.copyWith(
                  color: Colors.white,
                )),
            const SizedBox(
              height: 4,
            ),
            Text('eokfOKFOfl',
                style: Style.textStyle20.copyWith(
                  color: Colors.white,
                )),
            const SizedBox(
              height: 12,
            ),
            const Center(
                child: RattingItem(
              mainAxisAlignment: MainAxisAlignment.center,
            )),
            const SizedBox(
              height: 16,
            ),
            const ButtonAction(),
            const SizedBox(
              height: 32,
            ),
            const YouCanAlsoLike(),
            const SizedBox(
              height: 12,
            ),
            const SimilarBookListView(),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

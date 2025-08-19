import 'package:book_app/core/style.dart';
import 'package:book_app/feature/home/presentation/views/widgets/custom_appBar.dart';
import 'package:book_app/feature/home/presentation/views/widgets/feature_book_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeatureBookList(),
            Padding(
              padding: EdgeInsets.only(left: 8, top: 22),
              child: Text(
                'Best Seller',
                style: Style.titleMidum,
              ),
            )
          ],
        ),
      )),
    );
  }
}

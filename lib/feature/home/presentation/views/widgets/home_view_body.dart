import 'package:book_app/feature/home/presentation/views/widgets/custom_appBar.dart';
import 'package:book_app/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Column(
        children: [CustomAppBar(), CustomListViewItem()],
      )),
    );
  }
}

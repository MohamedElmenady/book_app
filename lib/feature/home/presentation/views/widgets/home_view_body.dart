import 'package:book_app/feature/home/presentation/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomAppBar(),
      ),
    );
  }
}

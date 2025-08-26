import 'package:book_app/core/assets.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: AspectRatio(
                  aspectRatio: 3 / 4,
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
              );
            }),
      ),
    );
  }
}

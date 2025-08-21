import 'package:book_app/feature/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class ListViewBestSellerItem extends StatelessWidget {
  const ListViewBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (con, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}

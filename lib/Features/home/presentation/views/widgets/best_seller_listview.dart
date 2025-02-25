import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_lsitview.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16, left: 16),
        child: BookListViewItem(),
      );
    }));

    // ListView.builder(
    //   physics: NeverScrollableScrollPhysics(),
    //   padding: EdgeInsets.zero,
    //   itemBuilder: (context, index) {
    //     return const Padding(
    //       padding: EdgeInsets.only(bottom: 20),
    //       child: BestSellerListViewItem(),
    //     );
    //   },
    //   itemCount: 3,
    // );
  }
}

import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_lsitview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appber.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.29,
              child: FeaturedBooksListView()),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

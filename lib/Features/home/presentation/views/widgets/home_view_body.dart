import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appber.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 30, left: 24),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: BestSellerListView(),
        ))
      ],
    );
  }
}

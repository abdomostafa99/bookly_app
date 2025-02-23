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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            child: FeaturedBooksListView()),
        Text(
          'Best Seller',
          style: Styles.titleMedium,
        )
      ],
    );
  }
}

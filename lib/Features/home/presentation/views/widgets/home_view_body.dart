import 'package:bookly_app/Features/home/presentation/views/widgets/custom_appber.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            child: FeaturedBooksListView()),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return CustomListViewItem();
          }),
    );
  }
}

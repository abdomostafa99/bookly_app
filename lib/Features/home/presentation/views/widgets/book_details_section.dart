import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetaildSection extends StatelessWidget {
  const BookDetaildSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomBooksDetailsAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomListViewItem(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'Audry Magee The Colony',
          style: Styles.textStyle20.copyWith(
              fontFamily: kSecondryFont,
              fontSize: 28,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontFamily: kSecondryFont, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BookRatingWidget(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}

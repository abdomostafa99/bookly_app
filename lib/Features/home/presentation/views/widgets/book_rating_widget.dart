import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 14,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '4.7',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 4,
        ),
        Opacity(opacity: 0.6, child: Text('(267)', style: Styles.textStyle14)),
      ],
    );
  }
}

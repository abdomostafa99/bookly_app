import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 3,
        ),
        Text('(267)',
            style: Styles.textStyle16.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}

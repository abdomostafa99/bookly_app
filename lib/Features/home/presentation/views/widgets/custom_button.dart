import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.borderRadius,
    required this.text,
    required this.color,
  });
  final BorderRadius borderRadius;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: borderRadius)),
      onPressed: () {},
      child: Text(
        text,
        style: Styles.textStyle16
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

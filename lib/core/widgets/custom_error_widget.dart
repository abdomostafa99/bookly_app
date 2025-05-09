import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErorrWidget extends StatelessWidget {
  const CustomErorrWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle18,
    );
  }
}

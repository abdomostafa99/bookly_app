import 'package:bookly_app/Features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomBooksButtonField extends StatelessWidget {
  const CustomBooksButtonField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          color: Colors.white,
          text: '19.99 \$',
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        CustomButton(
          color: Colors.amber,
          text: 'Free Preview',
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ],
    );
  }
}

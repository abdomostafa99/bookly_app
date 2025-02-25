import 'package:bookly_app/Features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomBooksButtonField extends StatelessWidget {
  const CustomBooksButtonField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              textColor: Colors.black,
              backgroundColor: Colors.white,
              text: '19.99 \$',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              textColor: Colors.white,
              backgroundColor: Color(0xffEF8262),
              text: 'Free Preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

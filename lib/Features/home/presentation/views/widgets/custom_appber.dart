import 'package:bookly_app/core/utils/asstets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 40, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AsstetsData.logo,
            height: 80,
            width: 80,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

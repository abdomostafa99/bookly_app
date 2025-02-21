import 'package:flutter/material.dart';

class SlidingTextWidget extends StatelessWidget {
  const SlidingTextWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, widget) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Read Free Books ',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}

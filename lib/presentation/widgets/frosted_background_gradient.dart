import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBackgroundGradient extends StatelessWidget {
  final Color color;
  final Color leftGradient;
  final Color rightGradient;

  const FrostedBackgroundGradient({
    super.key,
    required this.color,
    required this.leftGradient,
    required this.rightGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.sizeOf(context).height * .52,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  colors: [
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.2),
                  ],
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 100,
                sigmaY: 100,
              ),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

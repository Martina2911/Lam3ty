import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AnimatedAtBeg extends StatelessWidget {
  final activeInd;
  const AnimatedAtBeg({
    super.key,required this.activeInd
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: AnimatedSmoothIndicator(
      activeIndex: activeInd,
      count: 3,
      effect: ExpandingDotsEffect(
        strokeWidth: 3,
        radius: 30,
        dotColor: Colors.white,
        expansionFactor:2,
        offset: 30,
        dotHeight: 7,
        dotWidth: 16,
        activeDotColor: Colors.white,
      ),
    ),);
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../consts/style.dart';

class PaddingAtBeg extends StatelessWidget {
  final String text;
  const PaddingAtBeg({
    super.key,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.94),
      child: Center(
          child: Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Tajawal',
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                height: 1.0,
              ))),
    );
  }
}


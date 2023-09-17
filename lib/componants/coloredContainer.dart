import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class ColoredContainer extends StatelessWidget {
  final Color color;
  const ColoredContainer({
    super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

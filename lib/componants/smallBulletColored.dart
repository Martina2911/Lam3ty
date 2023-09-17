
import 'package:flutter/cupertino.dart';

import '../consts/style.dart';

class SmallBulletCol extends StatelessWidget {
  final color;
  const SmallBulletCol({
    super.key, required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),

      );
  }
}
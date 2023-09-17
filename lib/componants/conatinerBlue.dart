import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class containerBlue extends StatelessWidget {
  final String text;
  const containerBlue({
    super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 60,
      decoration: BoxDecoration(
        color: AppConsts.mainColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text, style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Tajawal',
          fontSize: 30.0,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.normal,
          height: 1.0,
        ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class ToggleContainer extends StatelessWidget {
  final bool isChecked;
  final VoidCallback toggle;

  ToggleContainer({required this.isChecked, required this.toggle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          border:Border.all(
            color: AppConsts.mainColor,  // Black border
            width: 3.0,
          ) ,
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Icon(
            isChecked ? Icons.check : null,
            size: 22,
            weight: 35,
            color: AppConsts.mainColor,
          ),
        ),
      ),
    );
  }
}
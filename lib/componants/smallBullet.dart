import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../consts/style.dart';

class SmallBullet extends StatelessWidget {
  final bool isChecked;
  final VoidCallback toggleChecked;
  const SmallBullet({
    super.key, required this.isChecked, required this.toggleChecked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: toggleChecked,
      child:Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border:Border.all(
          color: AppConsts.Sec,  // Black border
          width: 3.0,
        ) ,
        shape: BoxShape.circle,
        color: AppConsts.secondMain,
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
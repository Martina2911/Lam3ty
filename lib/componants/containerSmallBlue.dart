import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class containerSmallBlue extends StatelessWidget {
  final Icon icon;
  final String text;
   const containerSmallBlue({
    super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182,
      height: 60,
      decoration: BoxDecoration(
        color: AppConsts.mainColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
       child: Row(
        children:[
          SizedBox(width: 10,),
          icon,
          SizedBox(width: 7,)
          ,Text(
          text, style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Tajawal',
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.normal,
          height: 1.0,
        ),
        ),]
      ),
    ));
  }
}

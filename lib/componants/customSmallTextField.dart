import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class customSamllTextField extends StatelessWidget {
  const customSamllTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:90,
      decoration: BoxDecoration(
        color: AppConsts.secondMain,
        borderRadius: BorderRadius.circular(12),
      ),
      child:TextField(
        controller:TextEditingController(),
        decoration: InputDecoration(
          filled: true,
          fillColor:AppConsts.secondMain,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppConsts.Sec,width: 3),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppConsts.Sec,width: 2), // Set the color of the focused border
          ),
        ),
      ),);
  }
}
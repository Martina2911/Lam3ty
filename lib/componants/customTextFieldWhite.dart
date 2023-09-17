import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../consts/style.dart';
import '../data.dart';

class customTextfieldWhite extends StatelessWidget {
  final labelText;
  final width;
  final color;
  final icon;
  const customTextfieldWhite({
    super.key,this.labelText,required this.width,this.color,this.icon
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height:60,
      width:width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child:TextField(
        controller:TextEditingController(),
        decoration: InputDecoration(
          labelText:labelText,
          labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black38),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppConsts.Sec,width: 3.0),

          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppConsts.Sec,width: 2.0), // Set the color of the focused border
          ),
         prefixIcon: icon,
         prefixIconColor:Colors.black54,
        )),
      );
  }
}

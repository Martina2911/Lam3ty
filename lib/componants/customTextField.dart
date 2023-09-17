
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../consts/style.dart';

class customTextfield extends StatelessWidget {
  final labelText;
  final bool obs;
  const customTextfield({
    super.key,this.labelText,required this.obs
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:374,
      decoration: BoxDecoration(
        color: AppConsts.secondMain,
        borderRadius: BorderRadius.circular(12),
      ),
      child:
      TextField(
        controller:TextEditingController(),
        obscureText:obs ,
        decoration: InputDecoration(
          filled: true,
          fillColor:AppConsts.secondMain,
          labelText:labelText,
          labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black38),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppConsts.Sec,width: 3.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppConsts.Sec,width: 2.0), // Set the color of the focused border
          ),
        ),
      ),);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/smallBullet.dart';
import 'package:project1/componants/smallBulletwhite.dart';
import 'package:project1/componants/toggleContainer.dart';
import 'package:project1/consts/style.dart';

import 'customsmallTitle.dart';

class CustomWhiteCont extends StatelessWidget{
  final label;
  final money;
  final VoidCallback toggleChecked;
  final isChecked;
  const CustomWhiteCont({super.key,required this.label, required this.money, required this.toggleChecked, required this.isChecked,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 88.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(children:[ SizedBox(width: 10,),Text( "$label                ${money} LE",style:AppConsts.tx10,),SizedBox(width:100,),ToggleContainer(isChecked: isChecked, toggle: toggleChecked,)]),
    );
  }

}
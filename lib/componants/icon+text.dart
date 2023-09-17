import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/Divider.dart';
import 'package:project1/data.dart';

import '../consts/style.dart';

class IconText extends StatelessWidget{
  final link;
  final label;
  final index;
  final List? l;
  const IconText({super.key,required this.link,required this. label, required this.index,required this.l});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>l?[index]));
      },
      child:Column(children: [
      Row(children: [
        SizedBox(width: 23,),
        Image.asset(link,width: 40,height: 40,),
        SizedBox(width: 10,),
        Text(label,style: AppConsts.tx12,),
      ],),
      SizedBox(height: 15,),
      CustomDivider(),
      SizedBox(height: 20,),
    ],));
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/Divider.dart';
import 'package:project1/data.dart';

import '../consts/style.dart';

class IconTextOnly extends StatelessWidget{
  final link;
  final label;
  const IconTextOnly({super.key,required this.link,required this. label,});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Row(children: [
            SizedBox(width: 23,),
            Image.asset(link,width: 40,height: 40,),
            SizedBox(width: 10,),
            Text(label,style: AppConsts.tx12,),
          ],),
          SizedBox(height: 15,),
          CustomDivider(),
          SizedBox(height: 20,),
        ],);
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/smallBulletColored.dart';
import 'package:project1/componants/customsmallTitle.dart';
import 'package:project1/componants/titleInContainer.dart';

import '../consts/style.dart';

class CarContainerSmall extends StatelessWidget {
  final name;
  final color;
  const CarContainerSmall({
    super.key,required this.name,required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182,
      height: 77,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children:
         [SizedBox(width: 5,),Image.asset("assets/images/calender.png",width:14 ,height: 14,),
          SizedBox(width: 5,),Text("21/8/2021",style: AppConsts.tx6,),
          SizedBox(width: 5,),Image.asset("assets/images/alram.png",width:14 ,height: 14,),
          SizedBox(width: 5,),Text("9:00 AM"),
        ]),
     SizedBox(height: 15,),
     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:[Text(name,style: TextStyle(color: AppConsts.mainColor,fontSize: 14,fontWeight:FontWeight.w700),),
     SizedBox(width: 60,),SmallBulletCol(color: color,),SizedBox(width: 10,),
          ])
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/titleInContainer.dart';

import '../consts/style.dart';

class carContainer extends StatelessWidget {
  const carContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 372,
      height: 123,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white
      ),
      child: Row(
        children: [
          Row(children:[ SizedBox(width: 16,),Image.asset("assets/images/carPic.png",width: 116,height: 91,),]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  customtitleCont(title: "Vehicle Type : Ferrari"),
                  SizedBox(width: 40,),
                  Image.asset("assets/images/exit2.png",width: 21,height: 21,),
                ],),
              SizedBox(height: 10,),
              customtitleCont(title: "Vehicle Model : Auto 2012"),
              SizedBox(height: 10,),
              Row(
                children: [
                  customtitleCont(title: "Vehicle Color :"),
                  SizedBox(width: 7,),
                  Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppConsts.mainColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
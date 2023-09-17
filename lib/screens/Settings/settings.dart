import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../componants/icon+text.dart';
import '../../consts/style.dart';
import '../../data.dart';

class Settings extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Settings();

}

class _Settings  extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/vector2.png',),
        Column(
            children: [
              SizedBox(height: 70,),
              Row(children: [SizedBox(width: 23,), Text("Settings",style: AppConsts.tx3), SizedBox(width: 210,),Icon(Icons.arrow_forward_outlined,size:40,weight:10 ,),]),
              SizedBox(height: 40,),
              IconText(link: "assets/icons/bell.png", label: "Notifications", index: 0, l: l3,),
              IconText(link: "assets/icons/search.png", label: "Privacy and Security", index: 1, l: l3,),
              IconText(link: "assets/icons/cond.png", label: "Terms and Conditions", index: 2, l: l3,),
            ]),
      ]),
    );
  }

}
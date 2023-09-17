import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/Divider.dart';

import '../../consts/style.dart';

class Notifications extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Notifications();

}

class _Notifications  extends State<Notifications>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/vector2.png',),
        Column(
            children: [
              SizedBox(height: 70,),
              Row(children: [SizedBox(width: 23,), Text("Notifications",style: AppConsts.tx3), SizedBox(width: 170,),Icon(Icons.arrow_forward_outlined,size:40,weight:10 ,),]),
              SizedBox(height: 30,),
              Row(children:[SizedBox(width: 23,),Text("Notification 1",style:AppConsts.tx13,),]),
              Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.",
              style:AppConsts.tx14,),),
              CustomDivider(),
              SizedBox(height: 12,),
              Row(children:[SizedBox(width: 23,),Text("Notification 2",style:AppConsts.tx13,),]),
              Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.",
              style:AppConsts.tx14,),),
              CustomDivider(),
              SizedBox(height: 12,),
              Row(children:[SizedBox(width: 23,),Text("Notification 3",style:AppConsts.tx13,),]),
              Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.",
              style:AppConsts.tx14,),),
              CustomDivider(),
            ]),
      ]),
    );
  }

}
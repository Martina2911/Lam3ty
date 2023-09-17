import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style.dart';

class Privacy extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Privacy();

}

class _Privacy  extends State<Privacy>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/vector2.png',),
        Column(
            children: [
              SizedBox(height: 70,),
              Row(children: [SizedBox(width: 23,), Text("Privacy and Security",style: AppConsts.tx3), SizedBox(width: 55,),Icon(Icons.arrow_forward_outlined,size:40,weight:10 ,),]),
              SizedBox(height: 30,),
              Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.\n\nLorem Ipsum is not random text. Rather, it has roots in classical Latin literature dating back to 45 BC. From the book On the Extremes of Good and Evil",
                style:AppConsts.tx14,),),
              Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.\n\nLorem Ipsum is not random text. Rather, it has roots in classical Latin literature dating back to 45 BC. From the book On the Extremes of Good and Evil",
                style:AppConsts.tx14,),),
              SizedBox(height: 60,),
            ]),
      ]),
    );
  }

}
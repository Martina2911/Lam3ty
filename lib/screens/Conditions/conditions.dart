import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style.dart';

class Conditions extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Conditions();

}

class _Conditions  extends State<Conditions>{
 bool isChecked=false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(children: [
       Image.asset('assets/images/vector2.png',),
       Column(
           children: [
             SizedBox(height: 70,),
             Row(children: [SizedBox(width: 23,), Text("Terms and Conditions",style: AppConsts.tx3), SizedBox(width: 55,),Icon(Icons.arrow_forward_outlined,size:40,weight:10 ,),]),
             SizedBox(height: 30,),
             Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.\n\nLorem Ipsum is not random text. Rather, it has roots in classical Latin literature dating back to 45 BC. From the book On the Extremes of Good and Evil",
               style:AppConsts.tx14,),),
             Padding(padding:EdgeInsets.all(23),child:Text("Upon the client's initial approval of the design, this text is removed from the design and the final texts required for the design are placed. Some say that placing experimental texts in the design may distract the viewer from making many comments or criticisms of the basic design. Contrary to popular belief.\n\nLorem Ipsum is not random text. Rather, it has roots in classical Latin literature dating back to 45 BC. From the book On the Extremes of Good and Evil",
               style:AppConsts.tx14,),),
             SizedBox(height: 60,),
             Row(children: [
               SizedBox(width: 23,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isChecked=!isChecked;
                  });
                },
              child: Container(
                 width: 25,
                 height: 25,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(6),
                   color: Colors.white,
                   border: Border.all(
                     color: AppConsts.mainColor,
                     width: 2
                   ),
                 ),
                child: Center(
                  child: Icon(
                    isChecked? Icons.check:null,
                    weight: 35,
                    size: 22,
                    color: AppConsts.mainColor,
                  ),
                ),
               ),),
               SizedBox(width: 10,),
               Text("Accept all terms and conditions",style: AppConsts.tx10,),
             ],)

           ]),
     ]),
   );
  }

}
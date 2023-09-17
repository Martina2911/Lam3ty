import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/smallBulletColored.dart';
import 'package:project1/componants/customSmallCarCard.dart';
import 'package:project1/componants/customsmallTitle.dart';

import '../../componants/customBottomNavBar.dart';
import '../../componants/customSmallTitle2.dart';
import '../../componants/customSmallTitle3.dart';
import '../../componants/titleInContainer.dart';
import '../../consts/style.dart';
import '../../data.dart';
import '../AddCar3/AddCar3.dart';
import '../ServicesScreen/services_screen.dart';

class AddCar4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AddCar4();
}

class _AddCar4 extends State<AddCar4>{
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(children: [
        Image.asset('assets/images/vector2.png',),
        Column(
            children: [
              SizedBox(height: 70,),
              Row(children: [SizedBox(width: 23,), Text("The Reservations",style: AppConsts.tx3), SizedBox(width: 95,),
               IconButton(icon: Icon(Icons.arrow_forward_outlined,size: 40,color: Colors.black,), onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceScreen()));
               },),]),
              SizedBox(height:30 ,),
              Row(
                children: [
                  SizedBox(width: 35,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar3()));
                      },
                      child:Text("Currently",style: AppConsts.tx4)),
                  SizedBox(width: 90,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar4()));
                      },
                      child:Text("Previously",style: AppConsts.tx3)),
                ],
              ),
              Container(
                width: 370,
                height: 3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black54,
                      AppConsts.mainColor,
                    ],
                    stops: [0.5, 0.5],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Row(mainAxisAlignment:MainAxisAlignment.center,children: [
               GestureDetector(
                 onTap: (){
                   showDialog(
                       context: context,
                       builder: (BuildContext context) {
                     return AlertDialog(
                      // contentPadding: EdgeInsets.zero,
                     shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12.0),
                         ),
                         title:Column(children:[ Row(
                         children: [

                         Text("Details",style: AppConsts.tx3),
                         SizedBox(width: 155,),
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar4()));
                           },
                           child:Image.asset("assets/images/exit2.png"),),
                         ],),
                         ],),
                       content:
                       Column( mainAxisSize: MainAxisSize.min,
                         children: [
                           Divider(
                             color: Colors.black,
                             thickness: 2,
                           ),
                            Row(
                             children: [
                               Row(children:[Image.asset("assets/images/carPic.png",width: 110,height: 91,),]),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(children:
                                   [SizedBox(width: 2,),Image.asset("assets/images/calender.png",width:12 ,height: 12,),
                                     SizedBox(width: 3,),Text("21/8/2021",style: AppConsts.tx6,),
                                     SizedBox(width: 5,),Image.asset("assets/images/alram.png",width:12 ,height: 12,),
                                     SizedBox(width:3,),Text("9:00AM",style: AppConsts.tx6,),
                                   ]),
                                   SizedBox(height: 10,),
                                   customtitleCont2(title: "Type: Ferrari"),
                                   SizedBox(height: 10,),
                                   customtitleCont2(title: "Model: Auto 2021"),
                                   SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       customtitleCont2(title: "Color: "),
                                       SizedBox(width: 7,),
                                       SmallBulletCol(color: AppConsts.mainColor),
                                     ],
                                   ),
                                 ],
                               )
                             ],
                           ),
                           SizedBox(height: 7,),
                           Divider(
                             color: Colors.black,
                             thickness: 2,
                           ),
                           Row(mainAxisAlignment: MainAxisAlignment.start,
                             children:[
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               customSmallTitle(title: "Services"),
                               SizedBox(height: 20,),
                               customSmallTitle2(title:"Cleaning" ),
                               SizedBox(height: 20,),
                               customSmallTitle2(title:"Perfume" ),
                               SizedBox(height: 20,),
                               customSmallTitle2(title:"Tax" ),
                               SizedBox(height: 20,),
                               customSmallTitle2(title:"Total Payment" ),
                               SizedBox(height: 20,),
                             ],),
                            // SizedBox(width: 5,),
                             Column( crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 customSmallTitle(title: "Price"),
                                 SizedBox(height: 20,),
                                 customSmallTitle2(title:"50 LE" ),
                                 SizedBox(height: 20,),
                                 customSmallTitle2(title:"10 LE" ),
                                 SizedBox(height: 20,),
                                 customSmallTitle2(title:"5 LE" ),
                                 SizedBox(height: 20,),
                                 customSmallTitle2(title:"65 LE" ),
                                 SizedBox(height: 20,),
                             ],)
                           ],)

                       ],),
                     );
                         });},
                child:CarContainerSmall(name: "Ferrari", color: AppConsts.mainColor,),),
                SizedBox(width: 15,),
                CarContainerSmall(name: "VolksWagen", color: Colors.red,),
            ])
      ]),
    ]),
      bottomNavigationBar: CustomBottomNavBar(curr: currentIndex, editTap: (int i) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>l[i]));
        setState(() {
          currentIndex=i;
        });
      },),
    );
  }

}
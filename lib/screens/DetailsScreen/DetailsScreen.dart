import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../componants/customSmallTitle2.dart';
import '../../componants/customSmallTitle3.dart';
import '../../componants/customsmallTitle.dart';
import '../../componants/smallBulletColored.dart';
import '../../consts/style.dart';
import '../AddCar2/AddCar2.dart';
import '../AddCar3/AddCar3.dart';

class DetailsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_DetailsScreen();

}
class _DetailsScreen extends State<DetailsScreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(children: [
       Image.asset('assets/images/vector2.png',),
     Column(
       children: [
       SizedBox(height: 70,),
       Row(children: [SizedBox(width: 23,), Text("The Details",style: AppConsts.tx3), SizedBox(width: 160,),Icon(Icons.arrow_forward_outlined,size: 40,color: Colors.black,),]),
         Column(
           children: [
             SizedBox(height: 30,),
             Row(
               children: [
                 Row(children:[SizedBox(width: 23,) ,Image.asset("assets/images/carPic.png",width: 116,height: 91,),]),
                SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(children:
                     [SizedBox(width: 5,),Image.asset("assets/images/calender.png",width:14 ,height: 14,),
                       SizedBox(width: 5,),Text("21/8/2021",style: AppConsts.tx6,),
                       SizedBox(width: 5,),Icon(Icons.access_alarm_sharp,size: 14,),
                       SizedBox(width: 5,),Text("9:00AM"),
                     ]),
                     SizedBox(height: 12,),
                     customtitleCont2(title: "Vehicle Type: Ferrari"),
                     SizedBox(height: 12,),
                     customtitleCont2(title: "Vehicle Model:Auto 2021"),
                     SizedBox(height: 12,),
                     Row(
                       children: [
                         customtitleCont2(title: "Vehicle Color :"),
                         SizedBox(width: 10,),
                         SmallBulletCol(color: AppConsts.mainColor),
                       ],
                     ),
                   ],
                 )
               ],
             ),
             SizedBox(height: 7,),
             Divider(
               color: Colors.black54,
               thickness: 2,
             ),
             SizedBox(height: 30,),
             Row(mainAxisAlignment: MainAxisAlignment.center,
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
                 SizedBox(width: 105,),
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
               ],),
             SizedBox(height: 160,),
             Row( mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 GestureDetector(
                   onTap: (){
                     showDialog(context: context, builder: (BuildContext context)
                       {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                            title: SizedBox(height: 15,),
                        content: Column(mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/Smile.png"),
                            SizedBox(height: 10,),
                            Text("Thank You",style: AppConsts.tx3,),
                            SizedBox(height: 5,),
                            Text("Reservation is completed",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppConsts.mainColor),),
                            SizedBox(height: 20,),
                           GestureDetector(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                             },
                             child:Container(
                              width: 152,
                              height: 60,
                              decoration: BoxDecoration(
                                color: AppConsts.mainColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child:Text("Completed",style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Tajawal',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  height: 1.0,
                                ),
                                ),
                              ),
                            ),),
                          ],
                        ),
                              actions:[SizedBox(height: 15,)],
                          );
                       }
                     );
                   },
                child: Container(
                   width: 180,
                   height: 60,
                   decoration: BoxDecoration(
                     color: AppConsts.mainColor,
                     borderRadius: BorderRadius.circular(12),
                   ),
                   child: Center(
                     child:Text("Confirm",style: const TextStyle(
                       color: Colors.white,
                       fontFamily: 'Tajawal',
                       fontSize: 20.0,
                       fontWeight: FontWeight.w800,
                       fontStyle: FontStyle.normal,
                       height: 1.0,
                     ),
                     ),
                   ),
                 ),),
                 SizedBox(width: 15,),
                 GestureDetector(
                   onTap: (){
                     showDialog(context: context, builder: (BuildContext context)
                         {
                     return AlertDialog(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12.0),
                       ),
                       title: SizedBox(height: 25,),
                       content: Column(mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisSize: MainAxisSize.min,
                           children:[Text("When you go back ",style: AppConsts.tx5,),
                       SizedBox(height: 6,),
                       Text("you lose your place",style: AppConsts.tx5),
                       SizedBox(height: 15,),
                       Text("15th of August at 4 PM",style: AppConsts.tx3,),
                       SizedBox(height: 15,),
                       Row(children: [
                         GestureDetector(
                           onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar3()));
                           },
                           child:Container(
                           width: 125,
                           height: 60,
                           decoration: BoxDecoration(
                               color: AppConsts.mainColor,
                               borderRadius: BorderRadius.circular(12),
                           ),
                           child: Center(
                             child:Text("Confirm",style: const TextStyle(
                               color: Colors.white,
                               fontFamily: 'Tajawal',
                               fontSize: 20.0,
                               fontWeight: FontWeight.w800,
                               fontStyle: FontStyle.normal,
                               height: 1.0,
                             ),
                             ),
                           ),
                         ),),
                         SizedBox(width: 10,),
                         Container(
                           width: 125,
                           height: 60,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(12),
                               border: Border.all(
                                   color: AppConsts.mainColor,
                                   width: 4.0
                               )
                           ),
                           child: Center(
                             child:Text("Back",style: const TextStyle(
                               color: AppConsts.mainColor,
                               fontFamily: 'Tajawal',
                               fontSize: 20.0,
                               fontWeight: FontWeight.w800,
                               fontStyle: FontStyle.normal,
                               height: 1.0,
                             ),
                             ),
                           ),
                         ),
                       ],),]),
                       actions: [SizedBox(height: 25,)],
                     );
                         }
                     );
                   },
                 child:Container(
                   width: 180,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12),
                     border: Border.all(
                       color: AppConsts.mainColor,
                       width: 4.0
                     )
                   ),
                   child: Center(
                     child:Text("Back",style: const TextStyle(
                       color: AppConsts.mainColor,
                       fontFamily: 'Tajawal',
                       fontSize: 20.0,
                       fontWeight: FontWeight.w800,
                       fontStyle: FontStyle.normal,
                       height: 1.0,
                     ),
                     ),
                   ),
                 ),),
               ],
             )

           ],),
    ]),
    ]),
   );
  }

}
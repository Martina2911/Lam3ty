import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/consts/style.dart';
import 'package:project1/screens/OTP_screen/OTP_screen.dart';

import '../../componants/containerSmallBlue.dart';
import '../../componants/customBottomNavBar.dart';
import '../../data.dart';
import '../AddCar1/AddCar1.dart';
import '../AddCar2/AddCar2.dart';
import '../AddCar3/AddCar3.dart';
import '../Profile/Profile.dart';

class HomeeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeeScreen();

}
class _HomeeScreen extends State<HomeeScreen>{
  int currentIndex=3;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Stack(
    children: [
      Transform.scale(
      scale: 1.12,
      child: Image.asset("assets/images/Rectangle.png",
      fit: BoxFit.contain,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      ),
     ),
      Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 78,),
         Row(mainAxisAlignment:MainAxisAlignment.center,
           children:[ SizedBox(
          width: 374,
          child:TextField(
            controller:TextEditingController(),
            decoration: InputDecoration(
              fillColor: AppConsts.secondMain,
              filled: true,
              labelText:'Search your Location',
              labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black38),
              prefixIcon: const Icon(Icons.search,color: AppConsts.mainColor,size: 25,),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppConsts.Sec,width: 3),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppConsts.Sec,width: 2),
              ),
            ),
          ),),]),
         SizedBox(height: 550,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             GestureDetector(
               onTap: (){
                 showDialog(context: context, builder: (BuildContext ){
                   return AlertDialog(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12.0),
                     ),
                     title: Row(mainAxisAlignment:MainAxisAlignment.end
                       ,children: [
                         SizedBox(width: 20,),
                        Image.asset("assets/images/exit.jpg"),
                       ],),
                     content:
                       Column(
                        mainAxisSize: MainAxisSize.min,
                        children:[
                        Image.asset("assets/images/CarPlus.png"),
                        SizedBox(height: 20,),
                        Text("Please add at least one vehicle to continue your reservation",style: TextStyle(
                            color:Colors.black,fontWeight: FontWeight.w300,fontSize: 20 ),),
                        ]),
                     actions: [Center(
                       child:
                       GestureDetector(onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar1()));
                     },
                       child:Container(
                         width: 149,
                         height: 60,
                         decoration: BoxDecoration(
                           color: AppConsts.mainColor,
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                           child:Text("Add Now",style: const TextStyle(
                             color: Colors.white,
                             fontFamily: 'Tajawal',
                             fontSize: 20.0,
                             fontWeight: FontWeight.w800,
                             fontStyle: FontStyle.normal,
                             height: 1.0,
                           ),
                           ),
                         ),
                       ),)
                     )],
                   );
                 });
               },
             child:containerSmallBlue(text: 'Add A Vehicle', icon: Icon(Icons.car_crash_outlined,color: Colors.white,size: 20,),),),
             containerSmallBlue(text: 'Reserve Now',icon:Icon(Icons.add,color: Colors.white,size: 20,),),
           ],
         ),
          SizedBox(height: 10,),
        ],
      )
    ],
  ),
      bottomNavigationBar: CustomBottomNavBar(curr: 3, editTap: (int i) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>l[i]));
        setState(() {
          currentIndex=i;
        });
      },),
  );
  }
}


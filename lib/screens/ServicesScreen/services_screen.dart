import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../componants/conatinerBlue.dart';
import '../../componants/customSmallTitle2.dart';
import '../../componants/customTextFieldWhite.dart';
import '../../componants/customWhiteCont.dart';
import '../../componants/smallBullet.dart';
import '../../consts/style.dart';
import '../DetailsScreen/DetailsScreen.dart';

class ServiceScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_ServiceScreen();

}
class _ServiceScreen extends State<ServiceScreen>{
  bool isChecked1 = false;
  bool isChecked2= false;
  void toggleChecked1() {
    setState(() {
      isChecked1 = !isChecked1;
    });
  }
  void toggleChecked2() {
    setState(() {
      isChecked2 = !isChecked2;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(children: [
       Image.asset('assets/images/vector2.png',),
      SingleChildScrollView(child: Column(
       children: [
       SizedBox(height: 70,),
       Row(children: [SizedBox(width: 23,), Text("Car Services",style: AppConsts.tx3), SizedBox(width: 150,),
       IconButton(icon: Icon(Icons.arrow_forward_outlined,size: 40,color: Colors.black,), onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceScreen()));
       },),]),

         SizedBox(height: 25,),
         customSmallTitle2(title: "Date                                     Time"),
         SizedBox(height: 7,),
         Row(
           children: [
             SizedBox(width: 10,),
             customTextfieldWhite(icon: Icon(Icons.calendar_month_outlined,weight: 50,), width: 175.0,color: Colors.white,),
             SizedBox(width: 15,),
             customTextfieldWhite(icon:Icon(Icons.alarm,weight: 50,), width: 175.0,color: Colors.white,),
             SizedBox(width: 10,),
           ],),
         SizedBox(height: 15,),
         Row(children:[SizedBox(width: 23,),Text("Main Services",style: AppConsts.tx8,),]),
         SizedBox(height: 10,),
         CustomWhiteCont(money: "50",label: "Cleaning", toggleChecked: toggleChecked1, isChecked: isChecked1,),
         SizedBox(height: 35,),
         Row(children:[SizedBox(width: 23,),Text("Additional services",style: AppConsts.tx9,),]),
         SizedBox(height: 10,) ,
         GestureDetector(
           onTap: (){
             showDialog(context: context, builder: (BuildContext context){
               return  AlertDialog(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12.0),
                 ),
                   title: Row(children: [
                     GestureDetector(
                       onTap:(){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceScreen()));
                       },
                       child:Image.asset("assets/images/exit2.png"),),SizedBox(height: 20,),
                   ],),
                   content: Column(mainAxisSize:MainAxisSize.min,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       Text("Perfume",style: AppConsts.tx3,),
                       SizedBox(height: 7,),
                       Text("It is car scent diffuser is a type of air freshener designed to mask unpleasant odours and impart a fresh, luxurious fragrance."
                         ,  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppConsts.mainColor))
                     ],),
                   actions: [SizedBox(height: 15,)],
               );
             });
           },
         child:CustomWhiteCont(money: "10",label: "Perfume", toggleChecked: toggleChecked2, isChecked: isChecked2,),),
         SizedBox(height: 20,),
         Row(children:[SizedBox(width: 23,),Text("Total Payment",style: AppConsts.tx11,),SizedBox(width: 180,)
           ,Text("60 LE",style: AppConsts.tx11,),]),
         SizedBox(height: 20,),
         Divider(
           color: AppConsts.Sec,
           thickness: 1,
           height: 1,
         ),
         SizedBox(height: 20,),
         Row(children:[SizedBox(width: 23,),Text("Notes",style: TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w500),),]),
         SizedBox(height: 10,),
         Container(
           width: 371,
           height: 106,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             border: Border.all(
                 color: AppConsts.Sec,
                 width: 3.0
             ),
           ),
         ),
         SizedBox(height: 20,),
         GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
           },
           child:containerBlue(text: 'Continue',),),
       ]),
      ),
     ])
   );
  }


//Image.asset("assets/images/alram.png"
}
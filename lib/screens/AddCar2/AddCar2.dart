import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/customBottomNavBar.dart';
import 'package:project1/componants/titleInContainer.dart';
import 'package:project1/consts/style.dart';

import '../../componants/carContainer.dart';
import '../../data.dart';

class AddCar2 extends StatefulWidget{
  const AddCar2({super.key});

  @override
  State<StatefulWidget> createState() =>_AddCar2();}
class _AddCar2 extends State<AddCar2>{
  int currentIndex=2;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xffF9F9F9),
     body:
    SingleChildScrollView(child: Column(children: [
       Stack(children: [
            Image.asset('assets/images/vector2.png',),
            Column(
            children: [
             SizedBox(height: 70,),
             Row(children: [
             SizedBox(width: 23,),
             Text("My Vehicles",style: AppConsts.tx3),]),
            Container(
               width: 372,
               child:ListView.builder(
                 itemCount: 7,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemBuilder: (context, index){
                   return const Padding(padding: EdgeInsets.all(3.0),
                       child:carContainer());
                 }
             ))
           ],
         )
       ],)
     ],),
    ),
       bottomNavigationBar: CustomBottomNavBar(curr: currentIndex, editTap: (int i) {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>l[i]));
      setState(() {
        currentIndex=i;
      });
   },),
     floatingActionButton:Container(
    width: 74,
    height: 74,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppConsts.mainColor,
    ),
     child:FloatingActionButton(
       onPressed: () {
       },
       child: Icon(Icons.add,size: 50,weight:9.0,),
       backgroundColor: Colors.transparent,
     ),),
     floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
  }

}


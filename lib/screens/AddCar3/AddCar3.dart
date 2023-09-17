import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/AddCar4/AddCar4.dart';

import '../../componants/customBottomNavBar.dart';
import '../../consts/style.dart';
import '../../data.dart';

class AddCar3 extends StatefulWidget{
  const AddCar3({super.key});

  @override
  State<StatefulWidget> createState() =>_AddCar3();}
class _AddCar3 extends State<AddCar3>{
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
     Column(children: [
       Stack(children: [
               Image.asset('assets/images/vector2.png',),
               Column(
                    children: [
                         SizedBox(height: 70,),
                         Row(children: [SizedBox(width: 23,), Text("The Reservations",style: AppConsts.tx3),]),
                      SizedBox(height:30 ,),
                      Row(
                        children: [
                          SizedBox(width: 35,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar3()));
                            },
                              child:Text("Currently",style: AppConsts.tx3)),
                          SizedBox(width: 90,),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar4()));
                              },
                              child:Text("Previously",style: AppConsts.tx4)),
                        ],
                      ),
                      Container(
                        width: 370,
                        height: 3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppConsts.mainColor,
                              Colors.black54,
                            ],
                            stops: [0.5, 0.5],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
          ])
        ]),
      SizedBox(height: 120,),
      Image.asset("assets/images/forbidden.png"),
      SizedBox(height: 10,),
      Text("Sorry, No current Reservations",style: AppConsts.tx5),

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
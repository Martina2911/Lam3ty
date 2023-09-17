import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/componants/IconTextOnly.dart';
import 'package:project1/componants/customBottomNavBar.dart';
import 'package:project1/screens/UpdateScreen/Update_screen.dart';

import '../../componants/icon+text.dart';
import '../../consts/style.dart';
import '../../data.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() =>_Profile();

}
class _Profile extends State<Profile>{
  int current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(children: [
    Image.asset('assets/images/vector2.png',),
    Column(
    children: [
    SizedBox(height: 70,),
    Row(children: [SizedBox(width: 23,), Text("My Profile",style: AppConsts.tx3), SizedBox(width: 190,),Icon(Icons.arrow_forward_outlined,size:40,weight:10 ,),]),
    SizedBox(height: 25,),
    Container(
      width: 375,
      height: 92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0,3), // Offset in the x and y direction
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector( onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfile()));
          },
            child:Image.asset("assets/images/pic.png",width: 75,height: 75,),),
          SizedBox(width: 25,),
          Column(
            children: [
              SizedBox(height: 10,),
              Text("Martina Samy Hakim",style: AppConsts.tx8,),
              SizedBox(height: 5,),
              Row(
                children: [
                  Image.asset("assets/icons/star.png",width: 29,height: 29,),SizedBox(width: 5,),
                  Text("0.0",style: AppConsts.tx8,),
                ],
              ),

            ],
          )
        ],
      ),
    ),
    SizedBox(height: 30,),
    IconText(link: "assets/icons/wallet.png", label: "My Wallet", index: 0, l: l2,),
    IconText(link: "assets/icons/settings.png", label: "Settings", index: 1, l: l2,),
    IconText(link: "assets/icons/help.png", label: "Help", index: 2, l: l2,),
    GestureDetector(
      onTap: (){
        SystemNavigator.pop();
      },
        child:IconTextOnly(link: "assets/icons/exit.png", label: "Exit",),),
    ]),
      ]),
    bottomNavigationBar: CustomBottomNavBar(curr: current, editTap: (int i) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>l[i]));
      setState(() {
        current=i;
      });
    },),
    );
  }

}
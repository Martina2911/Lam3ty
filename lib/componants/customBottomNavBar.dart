
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';
import '../screens/OTP_screen/OTP_screen.dart';


class CustomBottomNavBar extends StatelessWidget{
  final void Function(int i) editTap;
  final curr;
  const CustomBottomNavBar({super.key,required this.curr,required this.editTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
        boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
       spreadRadius: 2,
       blurRadius: 4,
       offset: Offset(0, -2),
      ),
     ],
    ),
      child:BottomNavigationBar(
      backgroundColor:Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppConsts.mainColor,
      selectedLabelStyle:const TextStyle(color: AppConsts.mainColor),
      unselectedLabelStyle:const TextStyle(color: Colors.blueGrey,),
      unselectedItemColor: Colors.blueGrey,
      selectedIconTheme:const IconThemeData(
        color:AppConsts.mainColor,
      ),
      unselectedIconTheme: const IconThemeData(
          color:Colors.blueGrey
      ),
      currentIndex: curr,
      onTap:editTap,
      items: [
        BottomNavigationBarItem(
            icon:
                Icon(Icons.person_outline_sharp,),label: "profile",),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined,),label: 'reservations'),
        BottomNavigationBarItem(
            icon: Icon(Icons.car_crash_rounded,),label: 'vehicles'),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),label: 'home',),
      ],
    ));
  }
}


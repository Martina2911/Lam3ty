import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style.dart';
import '../LoginPage/Login_screen.dart';

class ChangePass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ChangePass();

}

class _ChangePass extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:Column(
      children: [
        Image.asset('assets/images/vector2.png',),
        SizedBox(height: 120,),
        Image.asset("assets/images/true.png"),
        SizedBox(height: 10,),
        const Text("Password changed successfully",style: AppConsts.tx5),
        SizedBox(height: 250,),
        GestureDetector(
          child: Text(" Sign In",style:TextStyle(color:AppConsts.mainColor,fontSize: 22,fontWeight: FontWeight.w700,) ,),
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ],
    )


   );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/ForgptPass2/Forgotpass2.dart';

import '../../componants/conatinerBlue.dart';
import '../../componants/customTextField.dart';
import '../../componants/customsmallTitle.dart';
import '../../consts/style.dart';
import '../LoginPage/Login_screen.dart';

class ForgotPass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_ForgotPass();
}

class _ForgotPass extends State<ForgotPass>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      children:[
      Stack(
      children: [
      Image.asset('assets/images/vector2.png'),
      Center(
      child:Container(child:
      const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
      SizedBox(height: 100,),
    Text("Forgot Password ?",style: AppConsts.tx2),
    SizedBox(height: 50,),
      ]),
      ),
      ),
      ]),
        SizedBox(height: 25,),
        Padding(padding: EdgeInsets.all(27),child: Text("Enter your email address below and we will send you a link to reset your password",
          style:AppConsts.tx15 ,),),
        SizedBox(height: 10,),
        customSmallTitle(title: 'Email',),
        SizedBox(height: 7,),
        customTextfield(obs: false,),
        SizedBox(height: 45,),
        GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPass2()));},
          child:containerBlue(text: "Send",),),
          ]),
      );
  }

}
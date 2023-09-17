import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/conatinerBlue.dart';
import 'package:project1/componants/customTextField.dart';
import 'package:project1/componants/customsmallTitle.dart';
import '../../componants/customSmallTextField.dart';
import '../../consts/style.dart';
import '../Homee_screen/Homee_Screen.dart';
import '../LoginPage/Login_screen.dart';

class OTPScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
        Stack(
        children: [
        Image.asset('assets/images/vector2.png'),
        Center(
       child:Container(child:
        const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        SizedBox(height: 100,),
        Text("OTP code",style: AppConsts.tx2),],
        ),
        ),
        ),
        ],),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150,),
              customSmallTitle(title: "Please Enter the OTP"),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               customSamllTextField(),
               SizedBox(width: 5,),
               customSamllTextField(),
               SizedBox(width: 5,),
               customSamllTextField(),
               SizedBox(width: 5,),
               customSamllTextField(),
                 ]
                ),
              SizedBox(height: 60,),
              GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child:containerBlue(text: "Confirm"),),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OTP not received ?",style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.w500,) ),
                  GestureDetector(
                    child: Text(" Resend",style:TextStyle(color:AppConsts.mainColor,fontSize: 17,fontWeight: FontWeight.w500,) ,),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => OTPScreen()));
                    },
                  )
                ],),
            ],
            
            )
          ),
        ],
      ),

      ));
  }

}


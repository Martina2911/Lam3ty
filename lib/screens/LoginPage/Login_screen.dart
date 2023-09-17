import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/consts/style.dart';
import 'package:project1/screens/ForgotPass/ForgotPass.dart';
import 'package:project1/screens/Profile/Profile.dart';
import '../../componants/conatinerBlue.dart';
import '../../componants/customTextField.dart';
import '../../componants/customsmallTitle.dart';
import '../SignUpScreen/SignUp.dart';
import '../two_screen/two_screen.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:SingleChildScrollView(
       child:
     Column(children: [
       Stack(
         children: [
           Image.asset('assets/images/vector2.png'),
           Center(
             child:Container(child:
           Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children:[
            SizedBox(height: 100,),
            Text("Login",style: AppConsts.tx2,),
            SizedBox(height: 10,),
            Text("Welcome Again!!",style: TextStyle(color: AppConsts.mainColor,
             fontFamily: 'Tajawal',
             fontSize: 20,
             fontStyle: FontStyle.normal,
             fontWeight: FontWeight.w700,
             height:1.0,),),]
           ))
           )],
       ),
       SizedBox(height: 100,),
       customSmallTitle(title: 'Email',),
      SizedBox(height: 5,),
       customTextfield(labelText: "Enter your email", obs: false,),
       SizedBox(height:8,),
       customSmallTitle( title: 'Password',),
       customTextfield(labelText: "Enter your password", obs: true,),
       GestureDetector(
         child:Row(mainAxisAlignment:MainAxisAlignment.start,children:[SizedBox(width: 23,) ,Text("Forgot your password?",textAlign: TextAlign.left,style:TextStyle(color:AppConsts.mainColor,fontSize: 14,fontWeight: FontWeight.w500,) ,),]),
         onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPass()));
         },
       ),
       SizedBox(height: 40,),
      GestureDetector( onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
      },
        child:containerBlue(text: "Login",),),
       SizedBox(height: 180,),
       Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Text("Don't have an account ?",style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.w500,) ),
      GestureDetector(
        child: Text(" Sign Up",style:TextStyle(color:AppConsts.mainColor,fontSize: 17,fontWeight: FontWeight.w500,) ,),
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()));
        },
      )
       ],)

     ],),
     )
   );
  }
}


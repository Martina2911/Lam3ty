import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/ChangePass/ChangePass.dart';

import '../../componants/conatinerBlue.dart';
import '../../componants/customTextField.dart';
import '../../componants/customsmallTitle.dart';
import '../../consts/style.dart';
import '../LoginPage/Login_screen.dart';

class ForgotPass2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_ForgotPass2();
}

class _ForgotPass2 extends State<ForgotPass2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child:Column(
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
            Padding(padding: EdgeInsets.all(27),child: Text("The password must consist of at least eight characters. Remember that it is not recommended to reuse usernames and passwords for different services and websites.",
              style:AppConsts.tx15 ,),),
            SizedBox(height: 10,),
            customSmallTitle(title: 'New password',),
            SizedBox(height: 7,),
            customTextfield(obs: true,),
            SizedBox(height: 10,),
            customSmallTitle(title: 'Confirm new password',),
            SizedBox(height: 7,),
            customTextfield(obs: true,),
            SizedBox(height: 40,),
            GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePass()));},
              child:containerBlue(text: "Change",),),
          ]),
    ) );
  }

}
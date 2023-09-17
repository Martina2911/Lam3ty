import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/smallBullet.dart';
import '../../componants/conatinerBlue.dart';
import '../../componants/customTextField.dart';
import '../../componants/customsmallTitle.dart';
import '../../consts/style.dart';
import '../LoginPage/Login_screen.dart';
import '../OTP_screen/OTP_screen.dart';

class _SignUp extends State<SignUp> {
  bool isChecked1 = false;
  bool isChecked2= false;
  bool isChecked3 = false;

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
  void toggleChecked3() {
    setState(() {
      isChecked3 = !isChecked3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/vector2.png'),
                  Center(
                      child:Container(child:
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          SizedBox(height: 100,),
                          Text("Sign Up",style: AppConsts.tx2),
                          SizedBox(height: 50,),
                          customSmallTitle(title: 'Name',),
                          customTextfield(labelText: "Enter your name", obs: false,)  ,
                        ],
                      ))),
                ],
              ),
              SizedBox(height: 7,),
              customSmallTitle(title: 'Email',),
              customTextfield(labelText: "Enter your Email", obs: false,)  ,
              SizedBox(height: 7,),
              customSmallTitle(title: 'Phone Number',),
              customTextfield(labelText: "Enter your Phone Number", obs: false,)  ,
              SizedBox(height: 7,),
              Row(children: [
                SizedBox(width: 23,),
                SmallBullet(isChecked: isChecked1 , toggleChecked: toggleChecked1,),
                customSmallTitle(title: "Male"),
                SizedBox(width: 110,),
                SmallBullet(isChecked: isChecked2 , toggleChecked: toggleChecked2,),
                customSmallTitle(title: "Female"),
              ],),
              SizedBox(height: 7,),
              customSmallTitle(title: 'Password',),
              customTextfield(labelText: "Enter your Password", obs: true,) ,
              SizedBox(height: 7,),
              customSmallTitle(title: 'Confirm Password',),
              customTextfield(labelText: "Confirm your password", obs: true,)  ,
              SizedBox(height: 7,),
              Row(children:[ SizedBox(width: 23,),SmallBullet(isChecked: isChecked3 , toggleChecked: toggleChecked3,),
                customSmallTitle(title: "I agree to all terms and conditions"),
              ]),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => OTPScreen()));
                },
                child:containerBlue(text: 'Sign Up',),),
              SizedBox(height: 45,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do you have an account ?",style: TextStyle(color:Colors.black,fontSize: 17,fontWeight: FontWeight.w500,) ),
                  GestureDetector(
                    child: Text("Sign In",style:TextStyle(color:AppConsts.mainColor,fontSize: 17,fontWeight: FontWeight.w500,) ,),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                  )
                ],)
            ]),
      ),
    );
  }
}


class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState() => _SignUp();
}
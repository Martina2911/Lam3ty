import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/conatinerBlue.dart';
import 'package:project1/consts/style.dart';

import '../../componants/customTextField.dart';
import '../../componants/customsmallTitle.dart';

class UpdateProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_UpdateProfile();
}

class _UpdateProfile extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:Column(
      children: [
        Stack(
          children: [
          Image.asset('assets/images/vector2.png'),

            Center(child:Column(
              children: [
                SizedBox(height: 105),
               Container(
                 width: 171,
                 height: 171,
                 child: ClipOval(child:Image.asset('assets/images/prof.png'),)),
              ],
            )),
          ],
        ),
    SizedBox(height: 20,),
    customSmallTitle(title: 'Name',),
    customTextfield(labelText: "Martina Samy", obs: true,) ,
    SizedBox(height: 15,),
    customSmallTitle(title: 'Email',),
    customTextfield(labelText: "tinasamy1122@gmail.com", obs: true,)  ,
    SizedBox(height: 15,),
    customSmallTitle(title: 'Phone Number',),
    customTextfield(labelText: "01201020304", obs: false,)  ,
    SizedBox(height: 40,),
    containerBlue(text: "Update"),
      ],
    ) ,
  );
  }

}
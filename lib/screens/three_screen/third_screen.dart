import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../componants/animatedAtBeg.dart';
import '../../componants/containerAtbeg1.dart';
import '../../componants/gestureAtBeg.dart';
import '../../componants/paddingAtBeg.dart';
import '../../consts/style.dart';
import '../LoginPage/Login_screen.dart';
import '../one_screen/one_screen.dart';
import '../two_screen/two_screen.dart';

class ThreeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ThreeScreen();
}

class _ThreeScreen extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.mainColor,
     body: Column(
       children:
       [
         Stack(
          children: [
          Image.asset('assets/images/vector.png'),
          Image.asset('assets/images/carr.png'),
        ],
      ),
        PaddingAtBeg(text:"Precision equipments deliver"),
        Center(child:Text("perfect results",style: AppConsts.tx,)),
        SizedBox(height: 50.0,),
        GestureDetector(
         child: ContainerAtBeg1(text:"Start Now"),
        onTap:()
         {
         Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));
         }
        ),
        SizedBox(height: 90,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              SizedBox(width: 20,),
              GestureAtBeg(screen: TwoScreen(),text: "Back",),
              SizedBox(width:80,),
              AnimatedAtBeg(activeInd: 2,),
              SizedBox(width:80,),
              GestureAtBeg(screen: LoginScreen(),text: "Next",),
              SizedBox(width: 20,)]),
      ],
     ),
    );
  }
}


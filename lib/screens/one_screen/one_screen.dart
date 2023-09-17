import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:project1/consts/style.dart';
import 'package:project1/screens/two_screen/two_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../componants/animatedAtBeg.dart';
import '../../componants/containerAtbeg1.dart';
import '../../componants/gestureAtBeg.dart';
import '../../componants/paddingAtBeg.dart';


class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OneScreen();
}

class _OneScreen extends State<OneScreen>{
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConsts.mainColor,
      body:SingleChildScrollView(child: Column(
      children: [Stack(
      children: [
      Image.asset('assets/images/vector.png'),
      Image.asset('assets/images/carWash.png'),
      ],
    ),
          PaddingAtBeg(text:"Real Care, Reliable Results"),
          SizedBox(
            height: 58.0,
          ),
          GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>TwoScreen()));},child:ContainerAtBeg1(text:"Start Now"),),
          SizedBox(
            height: 106,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
            AnimatedAtBeg(activeInd: 0,),
            SizedBox(width:100,),
            GestureAtBeg(screen: TwoScreen(),text: "Next",),
            SizedBox(width: 30,)]),

        ],
      )),
    );
  }


}

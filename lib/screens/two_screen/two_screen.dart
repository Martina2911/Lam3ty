import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../componants/animatedAtBeg.dart';
import '../../componants/containerAtbeg1.dart';
import '../../componants/gestureAtBeg.dart';
import '../../componants/paddingAtBeg.dart';
import '../../consts/style.dart';
import '../one_screen/one_screen.dart';
import '../three_screen/third_screen.dart';

class TwoScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _TwoScreen();
  }

class _TwoScreen extends State<TwoScreen>{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: AppConsts.mainColor,
   body: Column(
     children: [Stack(
       children: [
         Image.asset('assets/images/vector.png'),
         Image.asset('assets/images/carWash2.png'),
       ],
     ),
       PaddingAtBeg(text:"We care about your vehicle "),
       Center(child:Text("as you much as you do",style: AppConsts.tx,)),
       SizedBox(
         height: 50.0,
       ),
       GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreeScreen()));},child:ContainerAtBeg1(text:"Start Now"),),
       SizedBox(height: 90,),
       Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:[
             SizedBox(width: 20,),
             GestureAtBeg(screen: OneScreen(),text: "Back",),
             SizedBox(width:80,),
             AnimatedAtBeg(activeInd: 1,),
             SizedBox(width:80,),
             GestureAtBeg(screen: ThreeScreen(),text: "Next",),
             SizedBox(width: 20,)]),

     ],
    ),
   );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/style.dart';

class WalletScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_WalletScreen();

}

class _WalletScreen extends State<WalletScreen>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(children: [
       Image.asset('assets/images/vector2.png',),
     Column(
       children: [
       SizedBox(height: 70,),
     Row(children: [SizedBox(width: 23,), Text("My Wallet",style: AppConsts.tx3),
       SizedBox(width: 200,),Icon(Icons.arrow_forward_outlined,size:40,weight:10 ,),]),
     SizedBox(height: 25,),
         Image.asset("assets/images/wallet.png",width: 175,height: 175,),
         SizedBox(height: 10,),
         Text("Available Balance",style: AppConsts.tx12,),
         SizedBox(height: 5,),
         Text("50 LE",style: AppConsts.tx3,)
       ]),
     ]),
   );
  }

}
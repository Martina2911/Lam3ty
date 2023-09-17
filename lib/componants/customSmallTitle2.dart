import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class customSmallTitle2 extends StatelessWidget {
  final String title;
  const customSmallTitle2({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[SizedBox(width: 23,)
          ,Text(title,style: TextStyle(color:Colors.black54,fontSize: 19,fontWeight: FontWeight.w700),),SizedBox(width: 23,)]);
  }
}

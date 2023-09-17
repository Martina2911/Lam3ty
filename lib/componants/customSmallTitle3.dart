import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class customtitleCont2 extends StatelessWidget {
  final String title;
  const customtitleCont2({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[SizedBox(width: 5,)
          ,Text(title,style: TextStyle(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w700),),]);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class customtitleCont extends StatelessWidget {
  final String title;
  const customtitleCont({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[SizedBox(width: 23,)
          ,Text(title,style: TextStyle(color:Colors.black54,fontSize: 14,fontWeight: FontWeight.w700),),]);
  }
}

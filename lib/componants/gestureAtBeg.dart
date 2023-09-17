
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureAtBeg extends StatelessWidget {
  final Widget screen;
  final String text;
  const GestureAtBeg({
    super.key,required this.screen,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(child: Text(text,style:const TextStyle(
        color:Colors.white,
        fontFamily: 'Tajawal',
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        height:1.0,

      ))),
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}


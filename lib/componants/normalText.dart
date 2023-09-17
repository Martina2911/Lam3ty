import 'package:flutter/cupertino.dart';

class NormalText extends StatelessWidget{
  final title;
final color;
  const NormalText({super.key, required this.title,required this.color});
  @override
  Widget build(BuildContext context) {
   return Text(title,style: TextStyle(color: color,fontWeight: FontWeight.w700,fontSize: 23),);
  }

}
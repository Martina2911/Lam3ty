import 'package:flutter/cupertino.dart';

import '../consts/style.dart';

class customSmallTitle extends StatelessWidget {
  final String title;
  const customSmallTitle({
    super.key,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[SizedBox(width: 23,)
          ,Text(title,style: TextStyle(color:AppConsts.mainColor,fontSize: 19,fontWeight: FontWeight.w700),),SizedBox(width: 23,)]);
  }
}

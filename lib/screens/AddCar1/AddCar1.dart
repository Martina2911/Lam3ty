import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/componants/coloredContainer.dart';
import 'package:project1/componants/conatinerBlue.dart';
import 'package:project1/componants/customSmallTitle2.dart';
import 'package:project1/componants/customTextFieldWhite.dart';
import 'package:project1/componants/customsmallTitle.dart';
import 'package:project1/screens/AddCar2/AddCar2.dart';

import '../../componants/textfieldwithDropDown.dart';
import '../../consts/style.dart';
import '../../data.dart';

class AddCar1 extends StatefulWidget{
  const AddCar1({super.key});

  @override
  State<StatefulWidget> createState() =>_AddCar1();
}
class _AddCar1 extends State<AddCar1>{
  var selectedOption="";
  int s=0;
  int s1=0;
  int s2=0;
  List lists=[types,models,brands];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child:Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/vector2.png'),
                Column(
                children: [
                  SizedBox(height: 70,),
                  Row(children: [
                    SizedBox(width: 23,),
                    Text("New Vehicle",style: AppConsts.tx3),
                    SizedBox(width: 170,),
                    Icon(Icons.arrow_forward_outlined,size: 40,color: Colors.black,),
                  ],),
                  SizedBox(height: 22,),
                  customSmallTitle2(title: "Type of vehicle"),
                  SizedBox(height: 7,),
                  CustomTextFieldWithDropdown(width: 377, selectedIndex: s,
                    items: lists[0] ,
                    onChanged:(newValue) {
                      setState(() {
                        s = lists[0].indexOf(newValue ?? '');
                      });
                    },
                  ),
                ],
              )
            ],
          ),
      SizedBox(height: 10,),
     customSmallTitle2(title: "Vehicle Model              Vehicle Brand"),
     SizedBox(height: 7,),
     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         SizedBox(width: 10,),
         CustomTextFieldWithDropdown(width: 175, selectedIndex: s1,
           items: lists[1] ,
           onChanged:(newValue) {
             setState(() {
               s1 = lists[1].indexOf(newValue ?? '');
             });
           },
         ),
        SizedBox(width: 15,),
         CustomTextFieldWithDropdown(width: 175, selectedIndex: s2,
           items: lists[2] ,
           onChanged:(newValue) {
             setState(() {
               s2 = lists[2].indexOf(newValue ?? '');
             });
           },
         ),
        //customTextfieldWhite(labelText: 'Brand', width: 182.0,),
         SizedBox(width: 10,),
       ],),
          SizedBox(height: 15,),
          customSmallTitle2(title: "Vehicle Color"),
          SizedBox(height: 7,),
            Container(
        height: 35,
        width: 470,
        child:ListView.builder(
            itemCount: col.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
           return Padding(padding: EdgeInsets.all(3.0),
           child:ColoredContainer(color:col[index]));
    }
          ),),
          SizedBox(height: 10,),

          Center(
              child:
              Stack(
              children: [
              Row(children:[SizedBox(width: 10,),Image.asset("assets/images/dottedRectangle.png"),]),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 8,),
                 Row(children:[SizedBox(width:50), const customSmallTitle2(title: "Add pic for the vehicle (optional)"),]),
                  Image.asset("assets/images/camera.png")
                ],
              )
            ],
          )),
          SizedBox(height: 10,),
          customSmallTitle2(title: "Phone Number(optional)"),
          SizedBox(height: 7,),
          customTextfieldWhite(labelText: "", width: 377.0,),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCar2()));
            },
          child:
          containerBlue(text: "ِAdd"),)
        ],

      )),
    );
  }

}
List<Color> col=[AppConsts.mainColor,Colors.black,Colors.yellow,Colors.red,Colors.blueGrey,Colors.grey];
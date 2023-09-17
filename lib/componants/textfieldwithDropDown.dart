/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../consts/style.dart';
import '../data.dart';

class customTextfieldDrop extends StatelessWidget {
  final labelText;
  final width;
  final index;
  const customTextfieldDrop({
    super.key,this.labelText,required this.width,required this.index
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height:60,
      width:width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppConsts.Sec,
      ),
      child:TextField(
          controller:TextEditingController(),
          decoration: InputDecoration(
            labelText:labelText,
            labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black38),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppConsts.Sec,width: 3.0),
              s
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppConsts.Sec,width: 2.0), // Set the color of the focused border
            ),

            prefixIcon: DropdownButtonFormField(
              onChanged: (newValue) {
              } ,
              items: list[index].map<DropdownMenuItem>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )),
    );
  }
}
 */
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts/style.dart';

class customTextfieldDrop extends StatefulWidget {
  final labelText;
  final width;
  final index;
  const customTextfieldDrop({super.key,this.labelText,required this.width,required this.index});
  @override
  State<StatefulWidget> createState() => _customTextfieldDrop();
}

class _customTextfieldDrop extends State<customTextfieldDrop> {
 String selectedOption = 'Option 1';
 List<String> options = ['Option 1', 'Option 2', 'Option 3'];
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("App Bar"),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          height:60,
          width:182,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppConsts.Sec,
            ),
          child:TextField(
            decoration: InputDecoration(
              suffixIcon: DropdownButtonFormField<String>(
                value: selectedOption,
                onChanged: (newValue) {
                  setState(() {
                    selectedOption = newValue!;
                  });
                },
                items: options.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              labelText:"Hello",
              labelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black38),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: AppConsts.Sec,width: 3.0),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppConsts.Sec,width: 2.0),
            ),
          ),),
          ),
        ],
      ),
  );
 }
}

 */

import 'package:flutter/material.dart';

import '../consts/style.dart';

class CustomTextFieldWithDropdown extends StatelessWidget {
  final int selectedIndex;
  final List<String> items;
  final void Function(String?)? onChanged;
  final double width;

  CustomTextFieldWithDropdown({super.key,
    required this.selectedIndex,
    required this.items,
    required this.onChanged,
    this.width = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: AppConsts.Sec,width: 3),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
           child:  DropdownButton<String>
             (
                value: items[selectedIndex],
                onChanged: onChanged,
                items: items.map((option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option,style: TextStyle(color: AppConsts.greyy,fontWeight: FontWeight.w400,fontSize: 17),),
                  );
                }).toList(),
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down_outlined,weight: 27,),
              iconSize: 24,
              iconEnabledColor: AppConsts.greyy,
              underline: SizedBox(),
           ),
      ),
    );
  }
}

/*
Text(
              labelText,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,
              ),
            ),
            */
/*
import 'package:flutter/material.dart';

class CustomTextFieldWithDropdown extends StatelessWidget {
  final int selectedIndex;
  final String labelText;
  final List<String> items;
  final void Function(String?)? onChanged;
  final double width;

  CustomTextFieldWithDropdown({
    required this.selectedIndex,
    required this.labelText,
    required this.items,
    required this.onChanged,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Expanded(
              child: DropdownButton<String>(
                value: items[selectedIndex],
                onChanged: onChanged,
                items: items.map((option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */

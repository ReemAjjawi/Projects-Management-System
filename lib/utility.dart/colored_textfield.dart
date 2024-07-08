import 'package:flutter/material.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';

class ColoredTextField extends StatelessWidget {

  
  ColoredTextField({super.key,   
     required this.txt,
        required this.height,
    required this.width,});
  TextEditingController txt = TextEditingController();
final height ;
final width;
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5, right: 10),
      child: Container(
        width: width,
        height: height,
        
        decoration: BoxDecoration(   
          
          color: Colors.white,
          border:Border(
top: BorderSide(
  color: AppColor.borderTextFieldColor,
  width: 15
),
left: BorderSide(
    color: AppColor.borderTextFieldColor,

  width: 10
),
right: BorderSide(
    color: AppColor.borderTextFieldColor,

  width:10
),
bottom: BorderSide(
    color: AppColor.borderTextFieldColor,

  width: 6
),
          ),
borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.whiteColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.circular(25)
            
          
          ),focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.circular(15)
            
          
          )
          ),
          controller: txt,
        ),
      ),
    );
  }
}





class ColoredContainer extends StatelessWidget {

  
  ColoredContainer({super.key,   
     required this.txt,
        required this.height,
    required this.width,});
  String txt;
final height ;
final width;
  @override
  Widget build(BuildContext context) {
    return 
       Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5,),
      child: Container(
        width: width,
        height: height,
        
        decoration: BoxDecoration(   
          
          color: Colors.white,
          border:Border(
top: BorderSide(

  color: AppColor.borderTextFieldColor,
  width: 15
),

left: BorderSide(
    color: AppColor.borderTextFieldColor,

  width: 10
),
right: BorderSide(
    color: AppColor.borderTextFieldColor,

  width:10
),
bottom: BorderSide(
    color: AppColor.borderTextFieldColor,

  width: 6
),
          ),
borderRadius: BorderRadius.circular(20)),
        child:Center(child: Text(txt)),
      ),
    );
  }
}


  
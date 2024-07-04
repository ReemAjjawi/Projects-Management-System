import 'package:flutter/material.dart';

class ColoredTextField extends StatelessWidget {
  ColoredTextField({super.key});
  TextEditingController txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 5, right: 10),
      child: Container(
        width: 100,
        height: 80,
        decoration: BoxDecoration(   
          border:Border(
top: BorderSide(
  width: 23
),
left: BorderSide(
  width: 10
),
right: BorderSide(
  width:6
),
bottom: BorderSide(
  width: 15
),
          ),
borderRadius: BorderRadius.circular(20)),
        child: TextField(
          controller: txt,
        ),
      ),
    ));
  }
}



    //  child: TextFormField(
    //       controller:txt ,
    //       decoration: InputDecoration(
        
    //         enabledBorder: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(12),
            
        
    //         ),
            
    //                 focusedBorder: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(12),
    //           borderSide: BorderSide(
    //             color: Colors.red
              
    //           )
    //       ),
          
        
    //     ) ,
    //         ),
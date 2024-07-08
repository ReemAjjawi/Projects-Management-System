import 'package:flutter/material.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';

import '../main.dart';

class ContainerTextField extends StatelessWidget {
  const ContainerTextField({
    super.key,
    required this.field,
        required this.height,
        required this.keyboardType,
    required this.width,
    

    

    
  });
final TextInputType keyboardType;

  final TextEditingController field;
final height ;
final width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25)
        ),
       height:height,
       width:width,
        child: TextFormField(
          keyboardType:keyboardType,
            decoration: InputDecoration(
              filled: true,
            
              fillColor: AppColor.fill,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.borderColor
                            )
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.borderColor
                            )
                          ),

                        ),
                     obscureText:   field=="password"?  true : false,
          controller: field,
        ),
      ),
    );
  }
}
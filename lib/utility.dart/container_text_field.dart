import 'package:flutter/material.dart';

import '../main.dart';

class ContainerTextField extends StatelessWidget {
  const ContainerTextField({
    super.key,
    required this.field,
        required this.height,
    required this.width,

    
  });

  final TextEditingController field;
final height ;
final width;
  @override
  Widget build(BuildContext context) {
    return Container(
     height:height,
     width:width,
      child: TextFormField(
          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black
                          )
                        )
                      ),
        controller: field,
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../main.dart';

class ContainerTextField extends StatelessWidget {
  const ContainerTextField({
    super.key,
    required this.firstName,
    
  });

  final TextEditingController firstName;

  @override
  Widget build(BuildContext context) {
    return Container(
     height:height/14 ,
     width:width/2,
      child: TextFormField(
          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black
                          )
                        )
                      ),
        controller: firstName,
      ),
    );
  }
}
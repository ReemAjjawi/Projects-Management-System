import 'package:flutter/material.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/text_style.dart';

import '../main.dart';

class ContainerElevatedButton extends StatelessWidget {
  const ContainerElevatedButton({
    super.key,
     required this.txt,
  });
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(            width:width/1.3,
    height: height/12,
      child: ElevatedButton(onPressed: (){}, child: Text(txt,style: Style.button,),style: ElevatedButton.styleFrom(backgroundColor: AppColor.PegColor,foregroundColor: Colors.amber,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        
      )), ));
  }
}
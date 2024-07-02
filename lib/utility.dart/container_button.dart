import 'package:flutter/material.dart';

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
      child: ElevatedButton(onPressed: (){}, child: Text(txt),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      )), ));
  }
}
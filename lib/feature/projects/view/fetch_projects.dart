import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../utility.dart/colored_textfield.dart';

class FetchProjects extends StatelessWidget {
  const FetchProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(""),
            
          ),
ListView.builder(
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return ColoredContainer(
                                                txt: "sta",
                                                height: height / 8,
                                                width: width / 2.2);
                                          }),
                                            ],
      ) ,
    );
  }
}
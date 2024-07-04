import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';

import '../../main.dart';
import '../../utility.dart/container_button.dart';

class CreateOrJoin extends StatelessWidget {
  const CreateOrJoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        children: [
          SizedBox(
            width: width / 1.3,
            height: height / 17,
          ),
          Stack(
            children: [
              Container(
                width: width,
                height: height / 2.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: Image.asset(
                    'assets/images/wa.png',
                  ).image,
                )),
              ),
              Positioned(
                right: 35,
                //left: 40,
                top: 55,
                child: Container(
                  width: width,
                  height: height / 3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: Image.asset(ImageApp.triangle).image,
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            width: width / 1.3,
            height: height / 12,
          ),
          ContainerElevatedButton(txt: CREATE),
          SizedBox(
            width: width / 1.3,
            height: height / 12,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Container(
              width: width / 1.3,
              height: height / 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
                  Text(JOIN)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

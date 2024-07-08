import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/core/resources/text_style.dart';

import '../../main.dart';
import '../../utility.dart/container_button.dart';
import '../project_creation/view/project_creation.dart';

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
          InkWell(onTap: (){
        
Navigator.push(context, MaterialPageRoute(builder: (context)=> ProjectCreation() ));
              
          },
            child: ContainerElevatedButton(txt: CREATEINJOINPAGE)),
 SizedBox(
            width: width / 1.3,
            height: height / 12,
          ),
        
            
              DottedBorder(
      color: Colors.white, // border color
      strokeWidth: 1, // border width
      borderType: BorderType.RRect,
      dashPattern: [12, 3, 12, 3], 
      radius: Radius.circular(12), // border radius
    padding: EdgeInsets.all(9),
        child: 
            Container(
              width:width/1.4,
    height: height/18,
              child: InkWell(
                onTap: (){
        
Navigator.push(context, MaterialPageRoute(builder: (context)=> ProjectCreation() ));
              
          },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                IconButton(onPressed: (){},
                                            style: ButtonStyle(                                            backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      AppColor.whiteColor),
                                            ),
                                     
                                            icon: Center(child: Icon(Icons.add))),
                                                   SizedBox(
                            width: width / 21,
                            height: height / 12,
                          ),
                                                Text(JOIN,style: Style.joinStyle,)
                  ],
                
                            ),
              ),
          ),
          
      
    ),
      
        
            
            
           
        ],
      ),
    );
  }
}

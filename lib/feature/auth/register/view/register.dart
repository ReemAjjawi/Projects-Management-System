import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_event.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_state.dart';

import '../../../../core/resources/color.dart';
import '../../../../main.dart';
import '../../../../utility.dart/container_text_field.dart';
import '../../../project_creation/view/project_creation.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController firstName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: Center(
            child: Container(
              height: height,
              width: width / 1.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Spacer(flex:3),
                  Stack(
                    children: [
                      Container(
                        height: height / 1.5,
                        width: width / 1.2,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //  Spacer(flex: 1,) ,
                              Text(FIRSTNAME),

                              ContainerTextField(field: firstName,  height:height/15 , width:width/3,),
                           
                              // Spacer(flex: 1,) ,

                              Text(LASTNAME),
                              ContainerTextField(field: lastName,  height:height/15 ,width:width/3,),
                              // Spacer(
                              //   flex: 1,
                              // ),

                              Text(EMAIL),

                              ContainerTextField(field: email,  height:height/15 ,
     width:width/3,),
                              //    Spacer(flex: 1,) ,
                              Text(PASSWORD),
                              ContainerTextField(field: password,  height:height/15 ,
     width:width/3,),
                              Row(
                                children: [
                                  Checkbox(
                                      value: false, onChanged: (onChanged) {}),
                                  Text(REMEMBERME)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        // bottom: 20,
                        child: Container(
                          height: height / 12,
                          width: width / 12,
                          child: Center(
                            child: Image.asset(ImageApp.head),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Spacer(flex:3),

                  BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      if (state is RegisterInitialState) {
                        return ElevatedButton(
                            onPressed: () async {
                              context.read<RegisterBloc>().add(
                                    SignUp(
                                      user: RegisterModel(
                                        firstName: firstName.text,
                                        lastName: lastName.text,
                                        email: email.text,
                                        role: 'USER',
                                        password: password.text,
                                      ),
                                    ),
                                  );
                            },
                            child: Text(SIGNUP));
                      } else if (state is ErrorState) {
                        return SizedBox(
                                        height: 100,
                                        child: Column(
                                          children: [
                                          ElevatedButton(onPressed: ()async{

                            context.read<RegisterBloc>().add(

                              SignUp(
                                                              user: RegisterModel(
                                                                firstName: firstName.text,
                                                                lastName: lastName.text,
                                                                email: email.text,
                                                                role: 'USER',
                                                                password: password.text,
                                                              ),
                              ),

                                                            );},          child: Text(SIGNUP)),

                                            Text(
                                              state.message,
                                              style: TextStyle(fontSize: 20, color: Colors.red),
                                            )
                                          ],
                                        ),
                            
                            );
                      } else if (state is SuccessRegisterState) {
                        return Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            child: Center(
                              child: Icon(
                                Icons.verified,
                                color: Colors.white,
                              ),
                            ),
                            );
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(ALREADYHAVEANACCOUNT),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectCreation(),
                              ),
                            );
                          },
                          child: Text(LOGIN))
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

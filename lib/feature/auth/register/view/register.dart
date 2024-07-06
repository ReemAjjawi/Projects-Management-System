import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/core/resources/text_style.dart';
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height / 11,
                  ),
                  // Spacer(flex:3),
                  Stack(
                                  clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColor.lightColor,
                        ),
                        height: height / 1.65,
                        width: width / 1.5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //  Spacer(flex: 1,) ,
                              Text(
                                FIRSTNAME,
                                style: Style.fieldStyle,
                              ),

                              ContainerTextField(
                                field: firstName,
                                height: height / 15,
                                width: width / 1.7,
                              keyboardType: TextInputType.text,
                              ),

                              // Spacer(flex: 1,) ,

                              Text(
                                LASTNAME,
                                style: Style.fieldStyle,
                              ),
                              ContainerTextField(
                                field: lastName,
                                height: height / 15,
                                width: width / 1.7,
                                                              keyboardType: TextInputType.text,

                              ),
                              // Spacer(
                              //   flex: 1,
                              // ),

                              Text(
                                EMAIL,
                                style: Style.fieldStyle,
                              ),

                              ContainerTextField(
                                field: email,
                                height: height / 15,
                                width: width / 1.7,
                                                              keyboardType: TextInputType.emailAddress,

                              ),
                              //    Spacer(flex: 1,) ,
                              Text(
                                PASSWORD,
                                style: Style.fieldStyle,
                              ),
                              ContainerTextField(
                                field: password,
                                height: height / 15,
                                width: width / 1.7,
                                                              keyboardType: TextInputType.number,

                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (onChanged) {},
                                  ),
                                  Text(
                                    REMEMBERME,
                                    style: Style.fieldStyle,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -380,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height / 8,
                              width: width / 8,
                              child: Center(
                                child: Image.asset(ImageApp.head),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Spacer(flex:3),
                  SizedBox(
                    height: height / 18,
                  ),
                  BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      if (state is RegisterInitialState) {
                        return Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: ElevatedButton(
                            onPressed: () {
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
                            child: Text(SIGNUP),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                      color: AppColor.PegColor,
                                      width: width / 1.8,
                                    ))),
                          ),
                        );
                      } else if (state is ErrorState) {
                        return SizedBox(
                                                    height: height / 8,
                                                    width:width/3,
       child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
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
                                child: Text(SIGNUP),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                              ),
                              // Spacer(flex:3),
                          
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  state.message,
                                  style:
                                      TextStyle(fontSize: 15, color: Colors.red),
                                ),
                              )
                            ],
                          ),
                        );
                      } else if (state is SuccessRegisterState) {
                        return Container(
                          width: 50,
                          height: 50,
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
                      Text(
                        ALREADYHAVEANACCOUNT,
                        style: Style.question,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectCreation(),
                              ),
                            );
                          },
                          child: Text(LOGIN, style: Style.upIn))
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

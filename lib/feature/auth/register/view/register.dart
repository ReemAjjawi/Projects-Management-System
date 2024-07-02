import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/model/auth/register_model.dart';
import 'package:project_managment_state_managment_bloc/feature/register/bloc/register_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/register/bloc/register_event.dart';
import 'package:project_managment_state_managment_bloc/feature/register/bloc/register_state.dart';

import '../../../core/resources/color.dart';
import '../../../main.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController firstName =TextEditingController();
    TextEditingController email =TextEditingController();
  TextEditingController lastName =TextEditingController();
  TextEditingController password =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegisterBloc(),
      child: Builder(
        builder: (context) {
      return Scaffold(
        backgroundColor: AppColor.primaryColor,

        body: Center(
          child: Container(
                  height: height,
                 width: width/1.2,
            child: Column(
              children: [
                Container(
                child: Image.asset("assets/images/head.png"),
                           
                               ),
                                Container(
                    height: height/2,
                 width: width/1.34,
                              
                 child: Column(
                   children: [
                           
                           
                           
                     TextFormField(
                         decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                         borderSide: BorderSide(
                                           color: Colors.black
                                         )
                                       )
                                     ),
                       controller: firstName,
                     ),
                                   TextFormField(  decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                         borderSide: BorderSide(
                                           color: AppColor.borderColor
                                         )
                                       )
                                     ),
                                                     controller: lastName,
                   
                                   ),
                   
                   
                      TextFormField(  decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                         borderSide: BorderSide(
                                           color: AppColor.borderColor
                                         )
                                       )
                                     ),
                                       controller: email,
                   
                     ),
                      TextFormField(  decoration: InputDecoration(
                                       enabledBorder: OutlineInputBorder(
                                         borderSide: BorderSide(
                                           color: AppColor.borderColor
                                         )
                                       )
                                     ),
                                       controller: password,
                   
                     ),
                   
                   
                   ],
                 ),
                                ),
                           BlocBuilder<RegisterBloc, RegisterState>(
                             builder: (context, state) {
                               return ElevatedButton(onPressed: () async{
                                        context.read<RegisterBloc>()
                                                .add(SignUp(user:RegisterModel(firstName: firstName.text, lastName: lastName.text, email: email.text, password: password.text, role: "USER")));
                                                  
                                                  }, child:  BlocBuilder<RegisterBloc, RegisterState>(
                                           
                                              builder: (context, state) {
                                                if (state is LoadingState) {
                                                  return CircularProgressIndicator();
                                                } else if (state is SuccessRegisterState) {
                                                  return Text("success");
                                                } else if (state is ErrorState) {
                                                  return Text(
                                                      ("errprr"));
                                                     
                                                }
                                                else{
                                                     return Text(
                                                      (SIGNUP));
                                                }
                                              },
                                            ),
                                                       );
                             },
                           ),
                          
                           
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Text(ALREADYHAVEANACCOUNT),
                                       TextButton(onPressed: (){}, child: Text(LOGIN))
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
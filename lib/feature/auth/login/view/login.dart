import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/login/bloc/login_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/login/bloc/login_state.dart';
import 'package:project_managment_state_managment_bloc/main.dart';
import 'package:project_managment_state_managment_bloc/model/auth/login_model.dart';

import '../bloc/login_event.dart';


class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email =TextEditingController();

  TextEditingController password =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
              backgroundColor: AppColor.primaryColor,
              body: Center(
                child: Column(
                  children: [
                    Stack(
                              
                              children: [
                                Positioned(child: Container(
                    child: Image.asset(ImageApp.head),
                    
                                ) ),
                               
                                Container(
                                 height: height/2,
                                 width: width/1.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(EMAIL),
                              TextFormField(
                                controller: email,
                              ), Text(PASSWORD),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: AppColor.borderColor
                                                  )
                                                )
                                              ),
                                                              controller: password,
                    
                                            ),
                                            Row(
                                              children: [
                                                Checkbox(value: true
                                                , onChanged: (onChanged){}),
                                                Text(REMEMBERME)
                                              ],
                                            ),
                                 
                                          
                    
                            
                      ],
                    ),
                                )
                              ],
                    ),

      BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
if (state is SuccessLoginState)     {                 return ElevatedButton(onPressed: () async{
                         context.read<LoginBloc>().add(LogIn(user:LoginModel(email: email.text, password: password.text)));
                                                                                         
                                       },child: Text(LOGIN),
                                       
                                       );
                                       }
      else if (state is ErrorState) {
                      return SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                          ElevatedButton(onPressed: () async{
                         context.read<LoginBloc>().add(LogIn(user:LoginModel(email: email.text, password: password.text)));
                                                                                         
                                       },child: Text(LOGIN),
                                       
                                       ),
                            Text(
                              state.message,
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            )
                          ],
                        ),
                      );
                    } else if (state is SuccessLoginState) {
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
                                                         },),
                                        
                                       
                    
                      Row(
                                              children: [
                                                Text(DontHAVEANACCOUNT),
                                                TextButton(onPressed: (){}, child: Text(SIGNUP))
                                              ],
                                            )
                    



                  ],
                ),
              ),
            );
        }
      ),
    );
  }
}
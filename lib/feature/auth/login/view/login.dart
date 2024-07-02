import 'package:flutter/material.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/feature/register/bloc/register_event.dart';
import 'package:project_managment_state_managment_bloc/main.dart';

class Login extends StatelessWidget {
   Login({super.key});
  TextEditingController email =TextEditingController();
  TextEditingController password =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColor.primaryColor,
body: Stack(
  
  children: [
    Positioned(child: Container(
      child: Image.asset("assets/images/head.png"),

    ) ),
   
    Container(
     // height: height/2,
     // width: width/1.2,
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
//                          ElevatedButton(onPressed: () async{
//     context.read<RegisterBloc>()
//                     .add(SignUp(user:RegisterModel(firstName: firstName.text, lastName: lastName.text, email: email.text, password: password.text, role: "USER")));

// }, child:  BlocBuilder<RegisterBloc, RegisterState>(
       
//                   builder: (context, state) {
//                     if (state is LoadingState) {
//                       return CircularProgressIndicator();
//                     } else if (state is SuccessRegisterState) {
//                       return Text("success");
//                     } else if (state is ErrorState) {
//                       return Text(
//                           ("errprr"));
                         
//                     }
//                     else{
//                          return Text(
//                           ("initial"));
//                     }
//                   },
//                 ),
//   ),


                              Row(
                                children: [
                                  Text(DontHAVEANACCOUNT),
                                  TextButton(onPressed: (){}, child: Text(SIGNUP))
                                ],
                              )
      
              
        ],
      ),
    )
  ],
),
    );
  }
}
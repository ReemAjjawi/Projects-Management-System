import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_state.dart';


class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  TextEditingController projectName =TextEditingController();
    TextEditingController projectScript =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegisterBloc(),
      child: Builder(
        builder: (context) {
      return Scaffold(
        body: Column(
          children: [
                 Container(
                    width:70,
                    height: 70,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                        Text(PROJECTNAME),
                            
            Column(
                   
                children: [
           


 ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
              ))

               
            
            ],
                  ),
                  Column(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.plus_one))
        ],                    ),



          
            ElevatedButton(onPressed: () async{
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
                              ("initial"));
                        }
                      },
                    ),
              ),



          ],
        ),
      // floatingActionButton: FloatingActionButton(onPressed: ()async {
      //   context.read<RegisterBloc>()
      //               .add();


          // }),
      );
        }),
    );
  }
}
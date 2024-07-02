import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/feature/register/bloc/register_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/register/bloc/register_state.dart';

import '../../../model/projects/project_creation_model.dart';
import '../bloc/project_creation_bloc.dart';
import '../bloc/project_creation_event.dart';

class ProjectCreation extends StatefulWidget {
  const ProjectCreation({super.key});

  @override
  State<ProjectCreation> createState() => _ProjectCreationState();
}

class _ProjectCreationState extends State<ProjectCreation> {
  TextEditingController projectName =TextEditingController();
    TextEditingController projectScript =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => RegisterBloc(),
      child: Builder(
        builder: (context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
       
              children: [
                Container(
                  width:70,
                  height: 70,
                  child: Image.asset("assets/images/logo.png"),
                ),
                      Text(PROJECTNAME),
                TextFormField(
                  controller: projectName,
                ),
                  Text(PROJECTSCRIPT),
            
                 TextFormField(
                                  controller: projectScript,
              
                ),
              
              
              
          ElevatedButton(onPressed: () async{
              context.read<CreateProjectBloc>()
                      .add(CreateProject(project:ProjectModel(projectName: projectName.text, projectDescription: projectScript.text, projectStatus: "NEW") ));
          
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
            Row(
              children: [
                
              ],
            ),
             
          
          ],
                ),
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
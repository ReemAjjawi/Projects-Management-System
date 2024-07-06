import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/core/resources/text_style.dart';
import 'package:project_managment_state_managment_bloc/feature/project_creation/bloc/project_creation_state.dart';
import 'package:project_managment_state_managment_bloc/feature/tasks/add_task_field/view/tasks.dart';

import '../../../main.dart';
import '../../../model/projects/project_creation_model.dart';
import '../bloc/project_creation_bloc.dart';
import '../bloc/project_creation_event.dart';

class ProjectCreation extends StatefulWidget {
  const ProjectCreation({super.key});

  @override
  State<ProjectCreation> createState() => _ProjectCreationState();
}

class _ProjectCreationState extends State<ProjectCreation> {
  TextEditingController projectName = TextEditingController();
  TextEditingController projectScript = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateProjectBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                   // color: Colors.black12,
                    width: width/7,
                    height: height/7,
                    child: Image.asset(ImageApp.logo,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0,right: 5,left: 5),
                    child: Text(PROJECTNAME,style: Style.projectStyle,),
                  ),
                  TextFormField(
                  
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    controller: projectName,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(PROJECTSCRIPT,style: Style.projectStyle,),
                  ),
                  Container(
                    //width: width/3,
                    height: height/1.9,
                    child: TextFormField(
                                maxLines: 25,
                      decoration: InputDecoration(
                         filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                      ),
                      controller: projectScript,
                    ),
                  ),
                  Spacer(),
                  BlocConsumer<CreateProjectBloc, CreateProjectState>(

   listener: (context, state) {
                if (state is SuccessCreateProjectState) {
Navigator.push(context,MaterialPageRoute( builder: (context) => MyTasks(state.id),
                              ),);       }
              },



                    builder: (context, state) {
                           if (state is CreateProjectInitialState) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Center(
                          child: Container(
                              width: width / 1.2,
                              height: height / 12,
                              child: ElevatedButton(
                                onPressed: () async {
                                  context.read<CreateProjectBloc>().add(CreateProject(
                                      project: ProjectModel(
                                          projectName: projectName.text,
                                          projectDescription: projectScript.text,
                                          projectStatus: "NEW")));
                                },
                                child: Text(CREATEINPROJECTPAGE,style: Style.button,),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12))),
                              )),
                        ),
                      );}
                    else if (state is ErrorState) {
                        return SizedBox(
                          height: 300,
                          child: Column(
                            children: [
                            Container(
                            width: width / 1.3,
                            height: height / 12,
                            child: ElevatedButton(
                              onPressed: () async {
                                context.read<CreateProjectBloc>().add(CreateProject(
                                    project: ProjectModel(
                                        projectName: projectName.text,
                                        projectDescription: projectScript.text,
                                        projectStatus: "NEW")));
                              },
                              child: Text(CREATEINPROJECTPAGE),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            )),
                              Text(
                                state.message,
                                style: TextStyle(fontSize: 20, color: Colors.red),
                              )
                            ],
                          ),
                        );
                      } else if (state is SuccessCreateProjectState) {
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
              
                    
                    }
                    ),
                ],
                  ),
            ),
            
              
            ),
          );
      }
      ),);
      }
    
  }













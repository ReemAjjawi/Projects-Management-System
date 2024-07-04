import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/feature/project_creation/bloc/project_creation_state.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width/3,
                  height: height/8,
                  child: Image.asset("assets/images/logo.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(PROJECTNAME),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    controller: projectName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(PROJECTSCRIPT),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    //width: width/3,
                    height: height/2.5,
                    child: TextFormField(
                                maxLines: 8,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12))
                      ),
                      controller: projectScript,
                    ),
                  ),
                ),
                Spacer(flex:2),
                BlocBuilder<CreateProjectBloc, CreateProjectState>(
                  builder: (context, state) {
                         if (state is CreateProjectInitialState) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Container(
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
                              child: Text(CREATE),
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
                            child: Text(CREATE),
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
          );
      }
      ),);
      }
    
  }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/feature/tasks/task_field/bloc%20copy/tasks_state.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/tasks_model.dart';
import '../../../../main.dart';
import '../bloc copy/tasks_bloc.dart';
import '../bloc copy/tasks_event.dart';
import '../bloc/tasks_bloc.dart';

class MyTasks extends StatefulWidget {
  MyTasks({super.key});

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  TextEditingController taskDescription = TextEditingController();

  final List<String> cont = [];

  List<TaskModel> dd = [
    TaskModel(
        taskDescription: "taskDescription", taskStatus: "NEW", projectId: 3)
  ];

  int x = 1;

  //ValueNotifier<int> x = ValueNotifier(1);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FieldAdditionBloc(),
        ),
        BlocProvider(
          create: (context) => TaskBloc(),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: Image.asset(ImageApp.logo),
                  ),
                  Text(TASKS),
                  BlocBuilder<FieldAdditionBloc, FieldAdditionState>(
                    builder: (context, state) {
                      if (state is FieldInitialAdditionState) {
                        return Container(
                          height: height / 2,
                          width: width / 1.2,
                          child: Row(
                            children: [
                              Container(
                                height: height / 3,
                                width: width / 2.3,
                                child: TextField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black))),
                                  controller: taskDescription,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    cont.add(taskDescription.text);
                                    x++;
                                    taskDescription.clear();
                                    context
                                        .read<FieldAdditionBloc>()
                                        .add(Addition(cont: cont, x: x));
                                  },
                                  icon: Icon(Icons.abc_outlined))
                            ],
                          ),
                        );
                      } else if (state is ListFieldAdditionSuccessState) {
                        return Container(
                          height: height / 1.5,
                          width: width / 1.2,
                          color: Colors.red,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    cont.add(taskDescription.text);
                                    x++;
                                    taskDescription.clear();
                                    context
                                        .read<FieldAdditionBloc>()
                                        .add(Addition(cont: cont, x: x));
                                  },
                                  icon: Icon(Icons.abc_outlined)),
                              Container(
                                height: height / 1.7,
                                width: width / 2,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      TextField(
                                        controller: taskDescription,
                                      ),
                                      Container(
                                        height: height / 2,
                                        width: width / 2,
                                        child: ListView.builder(
                                            itemCount: state.x - 1,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                child: Text(
                                                    state.cont[index] ),
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 200,
                        );
                      }
                    },
                  ),
                  BlocBuilder<TaskBloc, TaskState>(
                    builder: (context, state) {
                      if (state is TaskInitialState) {
                        return Container(
                            width: width / 1.3,
                            height: height / 12,
                            child: ElevatedButton(
                              onPressed: () async {
                     context.read<TaskBloc>().add(CreateTask(task: cont));
                              },
                              child: Text(CREATE),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ));
                      } else if (state is ErrorState) {
                        return SizedBox(
                          height: 300,
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {}, child: Text(SIGNUP)),
                              Text(
                                state.message,
                                style:
                                    TextStyle(fontSize: 20, color: Colors.red),
                              )
                            ],
                          ),
                        );
                      } else if (state is SuccessTaskCreationState) {
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
                ],
              )),
        );
      }),
    );
  }
}



















                  // if (state is FieldInitialAdditionState) {
                  //     return Column(
                  //       children: [
                  //         IconButton(
                  //             onPressed: () async {
                  //               cont.add(taskDescription.text);
                  //               x.value++;
                  //               taskDescription.dispose();
                  //              context.read<FieldAdditionBloc>().add(Addition(cont: cont));},  
                  //                     icon: Icon(Icons.abc_outlined)),
                                      
                       
                  //                ValueListenableBuilder(
                  //                   valueListenable: x,
                  //                   builder: (context, hisValue, _) {
                  //                     return ListView.builder(
                  //                         itemCount: hisValue,
                  //                         itemBuilder: (context, index) =>
                  //                             TextFormField(
                  //                               controller: taskDescription,
                  //                             ));
                  //                   }),
                  //       ],
                  //     );
                  //           }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/tasks_model.dart';
import 'package:project_managment_state_managment_bloc/utility.dart/colored_textfield.dart';
import '../../../../main.dart';
import '../../task_creation/bloc/tasks_bloc.dart';
import '../../task_creation/bloc/tasks_event.dart';
import '../../task_creation/bloc/tasks_state.dart';
import '../bloc/add_task_bloc.dart';
import '../bloc/add_task_event.dart';
import '../bloc/add_task_state.dart';

class MyTasks extends StatefulWidget {
  MyTasks(this.id, {super.key});
  int id;

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  TextEditingController taskDescription = TextEditingController();

  final List<String> cont = [];
  void initState() {
    super.initState();
    // Use widget.id to fetch data or perform other tasks
    print('Received ID: ${widget.id}');
  }

  List<TaskModel> dd = [
    TaskModel(
        taskDescription: "taskDescrion", taskStatus: "NEW", project_id: 1)
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
          backgroundColor: AppColor.primaryColor,
          body: Container(
              height: height,
              width: width,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: width / 7,
                      height: height / 12,
                      child: Image.asset(ImageApp.logo),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(TASKS),
                      )),
                  SizedBox(
                    width: width / 7,
                    height: height / 12,
                  ),
                  BlocBuilder<FieldAdditionBloc, FieldAdditionState>(
                    builder: (context, state) {
                      if (state is FieldInitialAdditionState) {
                        return Container(
                          height: height / 7,
                          width: width / 1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ColoredTextField(
                                  txt: taskDescription,
                                  height: height / 8,
                                  width: width / 1.75),
                              SizedBox(
                                width: width / 21,
                              ),
                              IconButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColor.whiteColor),
                                  ),
                                  onPressed: () {
                                    cont.add(taskDescription.text);
                                    x++;
                                    taskDescription.clear();
                                    context
                                        .read<FieldAdditionBloc>()
                                        .add(Addition(cont: cont, x: x));
                                  },
                                  icon: Icon(Icons.add))
                            ],
                          ),
                        );
                      } else if (state is ListFieldAdditionSuccessState) {
                        return Container(
                          //  height: height/1.5,
                          //width: width,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: height / 7,
                                  width: width / 1.2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left:12.0),
                                        child: ColoredTextField(
                                            txt: taskDescription,
                                            height: height / 8,
                                            width: width / 1.75),
                                      ),
                                      SizedBox(
                                        width: width / 17,
                                      ),
                                      IconButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    AppColor.whiteColor),
                                          ),
                                          onPressed: () {
                                            cont.add(taskDescription.text);
                                            x++;
                                            taskDescription.clear();
                                            context
                                                .read<FieldAdditionBloc>()
                                                .add(
                                                    Addition(cont: cont, x: x));
                                          },
                                          icon: Icon(Icons.add))
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: height / 2.3,
                                    width: width / 1.5,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 43),
                                      child: ListView.builder(
                                          itemCount: state.x - 1,
                                          itemBuilder: (context, index) {
                                            return ColoredContainer(
                                                txt: state.cont[index],
                                                height: height / 8,
                                                width: width / 2.2);
                                          }),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );

                      } else {
                        return SizedBox(
                          width: 200,
                        );
                      }
                    },
                  ),
                  Spacer(),
                  BlocBuilder<TaskBloc, TaskState>(
                    builder: (context, state) {
                      if (state is TaskInitialState) {
                        return Container(
                            width: width / 1.3,
                            height: height / 12,
                            child: ElevatedButton(
                              onPressed: ()  {
                                context.read<TaskBloc>().add(CreateTask(
                                      task: cont,
                                    ));
                              },
                              child: Text(CREATEINTASKPAGE),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ));
                      } else if (state is ErrorState) {
                        return SizedBox(
                          height: 100,
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () async {},
                                  child: Text(CREATEINTASKPAGE)),
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
                  SizedBox(
                    height: height / 13,
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
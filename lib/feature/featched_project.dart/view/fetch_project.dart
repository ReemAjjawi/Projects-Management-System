import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/text_style.dart';
import 'package:project_managment_state_managment_bloc/feature/featched_project.dart/bloc/fetch_project_bloc.dart';
import 'package:project_managment_state_managment_bloc/main.dart';

import '../../../utility.dart/colored_textfield.dart';
import '../../auth/register/view/register.dart';
import '../../featched_tasks/bloc/fetch_tasks_bloc.dart';
import '../../featched_tasks/bloc/fetch_tasks_event.dart';
import '../../featched_tasks/bloc/fetch_tasks_state.dart';
import '../bloc/fetch_project_event.dart';
import '../bloc/fetch_project_state.dart';

class FetchProjectPage extends StatelessWidget {
  FetchProjectPage({super.key});

  final ValueNotifier<String> open = ValueNotifier<String>("");

  void handleMenuSelection(String value) {
    value == "delete" ? open.value = "ModalBottomSheetOpen" : "";
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeatchTasksBloc()..add(FeatchTasks())),
        BlocProvider(
          create: (context) => FeatchProjectBloc()..add(FeatchProject()),
        )
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: Container(
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 12,
                  width: width / 1.1,
                ),
                Center(
                  child: Container(
                    child: BlocBuilder<FeatchProjectBloc, FeatchProjectState>(
                      builder: (context, state) {
                        if (state is FeatchProjectInitialState) {
                          return Container(
                            height: height / 2,
                            width: width / 1.1,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColor.lightGreen,
                                      borderRadius: BorderRadius.circular(14)),
                                  height: height / 12,
                                  width: width / 1.1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.menu),
                                      Text(
                                        PROJECTNAME,
                                        style: Style.projectStyle,
                                      ),
                                      PopupMenuButton<String>(
                                        icon: Icon(Icons.more_vert),
                                        onSelected: handleMenuSelection,
                                        itemBuilder: (context) {
                                          return [
                                            PopupMenuItem<String>(
                                                value: 'delete',
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.delete,
                                                        color: AppColor
                                                            .lightgreyColor),
                                                    SizedBox(
                                                      width: width / 19,
                                                    ),
                                                    Text(
                                                      DELETE,
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .lightgreyColor),
                                                    ),
                                                  ],
                                                )),
                                            PopupMenuDivider(),
                                            PopupMenuItem<String>(
                                                value: 'logout',
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: AppColor
                                                          .lightgreyColor,
                                                    ),
                                                    SizedBox(
                                                      width: width / 19,
                                                    ),
                                                    InkWell(
                                                      onTap: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Register() ));

                                                      },
                                                      child: Text(
                                                        "Logout",
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .lightgreyColor),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ];
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else if (state is ErrorFetchProjectState) {
                          return Container(
                            child: Text("there is no "),
                          );
                        } else {
                          return Container(
                            height: height / 2.2,
                            width: width / 1.1,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: AppColor.lightGreen,
                                      borderRadius: BorderRadius.circular(14)),
                                  height: height / 12,
                                  width: width / 1.1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.menu),
                                      Text(
                                        (state as SuccessFeatchProjectState)
                                                    .featchedProject
                                                    .name !=
                                                ''
                                            ? (state
                                                    as SuccessFeatchProjectState)
                                                .featchedProject
                                                .name
                                            : PROJECTNAME,
                                        style: Style.projectStyle,
                                      ),
                                      PopupMenuButton<String>(
                                        icon: Icon(Icons.more_vert),
                                        onSelected: handleMenuSelection,
                                        itemBuilder: (context) {
                                          return [
                                            PopupMenuItem<String>(
                                                value: 'delete',
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.delete,
                                                        color: AppColor
                                                            .lightgreyColor),
                                                    SizedBox(
                                                      width: width / 19,
                                                    ),
                                                    Text(
                                                      DELETE,
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .lightgreyColor),
                                                    ),
                                                  ],
                                                )),
                                            PopupMenuDivider(),
                                            PopupMenuItem<String>(
                                                value: 'Logout',
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Register()));
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color: AppColor
                                                            .lightgreyColor,
                                                      ),
                                                      SizedBox(
                                                        width: width / 19,
                                                      ),
                                                      Text(
                                                        EDIT,
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .lightgreyColor),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ];
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                ValueListenableBuilder<String>(
                                  valueListenable: open,
                                  builder: (context, value, child) {
                                    if (value == "ModalBottomSheetOpen") {
                                      return Center(
                                        child: Container(
                                          color:
                                              Color.fromARGB(255, 255, 255, 255)
                                                  .withOpacity(0.5),
                                          child: Center(
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: SingleChildScrollView(
                                                child: AlertDialog(
                                                  elevation: 5,
                                                  title:
                                                      Text('Confirm Deletion'),
                                                  content: Text(
                                                      'Are you sure you want to delete?'),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () {
                                                        // Perform delete operation
                                                      },
                                                      child: Text('Yes'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Text('No'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Container();
                                    }
                                  },
                                ),
                                Container(
                                  height: height / 12,
                                  width: width / 1.1,
                                ),
                                Container(
                                  height: height / 5,
                                  width: width / 1.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.PegColor),
                                  child: Text(
                                      (state as SuccessFeatchProjectState)
                                          .featchedProject
                                          .description),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                BlocBuilder<FeatchTasksBloc, FeatchTasksState>(
                    builder: (context, state) {
                  if (state is FeatchTasksInitialState)
                    return Container(
                      width: width / 3,
                      height: height / 4.5,
                    );
                  else if (state is LoadingState)
                    return Center(child: CircularProgressIndicator());
                  else if (state is SuccessFeatchTasksState) {
                    return Container(
                      //         color: Colors.amber,
                      width: width / 3,
                      height: height / 2.5,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ListView.builder(
                            itemCount: state.featchedTasks.length,
                            itemBuilder: (context, index) {
                              return ColoredContainer(
                                  txt: state
                                      .featchedTasks[index].taskDescription,
                                  height: height / 8,
                                  width: width / 5);
                            }),
                      ),
                    );
                  } else {
                    return Container();
                  }
                })
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: AppColor.floatingButton,child:Container(
          //   child:  Image.asset("assets/images/project"),decoration:  BoxDecoration(
          //     shape: BoxShape.circle
          //   ),
          //   width:width/10,height:height/18,
          // ),
          // ),
        );
      }),
    );
  }
}









//   ValueNotifier<ResultModel> result = ValueNotifier(ResultModel());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: IconButton(
//             onPressed: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomePageWithList(),
//                   ));
//             },
//             icon: Icon(Icons.toc)),
//       ),
//       body: ValueListenableBuilder(
//         valueListenable: result,
//         builder: (context, value, child) {
//           if (value is CatModel) {
//             return ListTile(
//               title: Text(value.name),
//               leading: Image.network(
//                 value.image,
//                 errorBuilder: (context, error, stackTrace) {
//                   return FlutterLogo();
//                 },
//               ),
//             );
//           } else if (value is ExceptionModel) {
//             return Text(value.message);
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () async {
//         result.value = await core.get<CatServiceImp>().getCat();
//       }),
//     );
//   }
// }



  // void _openBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         padding: const EdgeInsets.all(16.0),
  //         height: 200,
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Text(
  //               'Options',
  //               style: TextStyle(
  //                 fontSize: 24,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //             const Divider(),
  //             ListTile(
  //               leading: const Icon(Icons.delete),
  //               title: const Text('Delete'),
  //               onTap: () {
  //                 // Handle delete action
  //                 Navigator.pop(context);
  //               },
  //             ),
  //             ListTile(
  //               leading: const Icon(Icons.edit),
  //               title: const Text('Edit'),
  //               onTap: () {
  //                 // Handle edit action
  //                 Navigator.pop(context);
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
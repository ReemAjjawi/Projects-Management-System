import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/color.dart';
import 'package:project_managment_state_managment_bloc/core/resources/text_style.dart';
import 'package:project_managment_state_managment_bloc/feature/featched_project.dart/bloc/fetch_project_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/project_deletion.dart/bloc/delete_project_bloc.dart';
import 'package:project_managment_state_managment_bloc/main.dart';

import '../../../utility.dart/colored_textfield.dart';
import '../bloc/delete_project_event.dart';

class DeleteProjectPage extends StatelessWidget {
  DeleteProjectPage({super.key});
  void handleMenuSelection(String value) {
    value == "delete" ? open.value = "ModalBottomSheetOpen" : "";
  }

  ValueNotifier<String> open = ValueNotifier("");
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeleteProjectBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height / 12,
                width: width / 1.1,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.lightGreen,
                      borderRadius: BorderRadius.circular(14)),
                  height: height / 12,
                  width: width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.radar_outlined),
                      Text(
                        "data",
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
                                        color: AppColor.lightgreyColor),
                                    SizedBox(
                                      width: width / 19,
                                    ),
                                    Text(
                                      DELETE,
                                      style: TextStyle(
                                          color: AppColor.lightgreyColor),
                                    ),
                                  ],
                                )),
                            PopupMenuDivider(),
                            PopupMenuItem<String>(
                                value: 'edit',
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: AppColor.lightgreyColor,
                                    ),
                                    SizedBox(
                                      width: width / 19,
                                    ),
                                    Text(
                                      EDIT,
                                      style: TextStyle(
                                          color: AppColor.lightgreyColor),
                                    ),
                                  ],
                                )),
                          ];
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: height / 12,
                width: width / 1.1,
              ),
              Container(
                height: height / 10,
                width: width / 1.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.PegColor),
                child: Text(""),
              ),
              ValueListenableBuilder(
                valueListenable: open,
                builder: (context, value, child) {
                  if (value == "ModalBottomSheet") {
                    return ListTile();
                  } else {
                    return FlutterLogo();
                  }
                  //return FlutterLogo();
                },
              ),
              Container(
                width: width / 3,
                height: height / 2,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ColoredContainer(
                          txt: "hhh", height: height / 9, width: width / 4);
                    }),
              )
            ],
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
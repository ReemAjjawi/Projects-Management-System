

                                    // child: Column(
                                    //   children: [
                                    //     IconButton(
                                    //            onPressed: ()  {
                                    //              cont.add(taskDescription.text);
                                    //              x++;
                                    //              taskDescription.dispose();
                                    //             context.read<FieldAdditionBloc>().add(Addition(cont: cont,x:x));},  
                                    //                                                   icon: Icon(Icons.abc_outlined)),
                                    //     // Container(
                                        //               height:height/4,

                                        //   child: Column(
                                        //                                         children: [
                                        //   TextField(
                                        //                             controller: taskDescription,
                                        //   ),
                                        //                                       ListView.builder(itemCount: state.x, itemBuilder: (context,index){
                                        //                 Container(
                                        //                             child: Text(                                    state.cont[index]
                                        //                             ),                                  );}
                                        //                                       )
                                        //                                         ],
                                        //                                       ),
                                        // ),
                                //      ],
                                  //  ),
                               




              // BlocBuilder<TaskBloc, TaskState>(
              //   builder: (context, state) {
              //     if (state is TaskInitialState) {
              //       return Container(
              //           width: width / 1.3,
              //           height: height / 12,
              //           child: ElevatedButton(
              //             onPressed: () async {
              //               // context.read<TaskBloc>().add(CreateTask(task:TaskModel(taskDescription: taskDescription.text, taskStatus: "NEW", projectId: 3)));
              //             },
              //             child: Text(CREATE),
              //             style: ElevatedButton.styleFrom(
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(12))),
              //           ));
              //     } else if (state is ErrorState) {
              //       return SizedBox(
              //         height: 300,
              //         child: Column(
              //           children: [
              //             ElevatedButton(
              //                 onPressed: () async {}, child: Text(SIGNUP)),
              //             Text(
              //               state.message,
              //               style: TextStyle(fontSize: 20, color: Colors.red),
              //             )
              //           ],
              //         ),
              //       );
              //     } else if (state is SuccessTaskCreationState) {
              //       return Container(
              //         width: 200,
              //         height: 100,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: Colors.green),
              //         child: Center(
              //           child: Icon(
              //             Icons.verified,
              //             color: Colors.white,0
              //           ),
              //         ),
              //       );
              //     } else {
              //       return CircularProgressIndicator();
              //     }
              //   },
              // ),







//     on<DeleteTask>(
//       (event, emit) async {
//         emit(LoadingState());
//         // ! We Can Find The attribute of Event in the 'event' object 
//         ResultModel result = await TaskSerivceImp().deleteTask(event.task);
//        // print(result.)
//         if (result is SuccessClass) {
//           emit((SuccessTaskCreationState()));
          
//         } else {
//           emit(ErrorState(message: ''));
//         }
//       },
//     );


//   }
// }




















        //  return Dismissible(
        //                                             background: Container(
        //                                               color: Colors.red,
        //                                               child: Icon(Icons.delete),
        //                                             ),
        //                                             key: ValueKey<String>(
        //                                                 cont[index]),
        //                                             onDismissed:
        //                                                 (DismissDirection
        //                                                     direction) {},
        //                                             child: ColoredContainer(
        //                                                 txt: state.cont[index],
        //                                                 height: height / 8,
        //                                                 width: width / 2.2));


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
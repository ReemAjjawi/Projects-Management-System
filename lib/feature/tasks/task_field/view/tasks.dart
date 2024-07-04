import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
import 'package:project_managment_state_managment_bloc/core/resources/images.dart';
import 'package:project_managment_state_managment_bloc/model/tasks/tasks_model.dart';
import '../../../../main.dart';

import '../bloc copy/tasks_bloc.dart';
import '../bloc copy/tasks_event.dart';
import '../bloc copy/tasks_state.dart';


class Tasks extends StatelessWidget {
   Tasks({super.key});
   TextEditingController taskDescription=TextEditingController();
   List <TaskModel> dd=[TaskModel(taskDescription: "taskDescription", taskStatus: "NEW", projectId: 3)];
int x=1;
ValueNotifier
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TaskBloc(),
      child: Builder(
        builder: (context) {
      return Scaffold(
        body: Column(
          children: [
                 Container(
                    width:70,
                    height: 70,
                    child: Image.asset(ImageApp.logo),
                  ),
                        Text(TASKS),
                            
            Column(
                   
                children: [
           


 ListView.builder(
              itemCount: x,
              itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
              ))

               
            
            ],
                  ),
                  Column(
        children: [
//           IconButton(onPressed: ()async{
// BlocBuilder<FieldAdditionBloc,FieldAdditionState>(builder: (context,state){
// if (state is FieldInitialAdditionState){
//   return ListView.builder(itemBuilder: ((context, index) {
//     return TextFormField(

// controller:taskDescription ,
//     );
//   }
  
  
//   ));
// }
// else{
//   return SizedBox();
// }
// });
//           }, icon: Icon(Icons.plus_one))
        ],                    ),



          
              BlocBuilder<TaskBloc, TaskState>(
                               builder: (context, state) {
                                if (state is TaskInitialState ){
                                 return    Container(
                          width: width / 1.3,
                          height: height / 12,
                          child: ElevatedButton(
                            onPressed: () async {
                             // context.read<TaskBloc>().add(CreateTask(task:TaskModel(taskDescription: taskDescription.text, taskStatus: "NEW", projectId: 3)));
                            },
                            child: Text(CREATE),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ));
                  }
                     
                         else if (state is ErrorState) {
                      return SizedBox(
                        height: 300,
                        child: Column(
                          children: [
                          ElevatedButton(onPressed: ()async{
                   
     
                                            },          child: Text(SIGNUP)),
                                        
                            Text(
                              state.message,
                              style: TextStyle(fontSize: 20, color: Colors.red),
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
        ),

          // }),
      );
        }),
    );
  }
}
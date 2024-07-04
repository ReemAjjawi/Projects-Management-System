// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:project_managment_state_managment_bloc/core/constants/app_strings.dart';
// import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_bloc.dart';
// import 'package:project_managment_state_managment_bloc/feature/auth/register/bloc/register_state.dart';
// import 'package:project_managment_state_managment_bloc/feature/tasks/task_creation/bloc/tasks_bloc.dart';

// import '../../../../core/resources/images.dart';
// import '../../task_field/bloc/tasks_bloc.dart';


// class Tasks extends StatelessWidget {
//    Tasks({super.key});
// int x=1;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (context) => TaskBloc(),
//       child: Builder(
//         builder: (context) {
//       return Scaffold(
//         body: Column(
//           children: [
//                  Container(
//                     width:70,
//                     height: 70,
//                     child: Image.asset(ImageApp.logo),
//                   ),
//                         Text(TASKS),
                            
//             Column(
                   
//                 children: [
           


//  ListView.builder(
//               itemCount: x,
//               itemBuilder: (context, index) => Container(
//                   alignment: Alignment.center,
//               ))

               
            
//             ],
//                   ),
//                   Column(
//         children: [
//           IconButton(onPressed: ()async{
// BlocBuilder<FieldAdditionBloc,FieldAdditionState>(builder: (context,state){
// if (state is FieldAdditionSuccessState){
//   return ListView.builder(itemBuilder: itemBuilder)
// }
// })
//           }, icon: Icon(Icons.plus_one))
//         ],                    ),



          
//               BlocBuilder<RegisterBloc, RegisterState>(
//                                builder: (context, state) {
//                                 if (state is RegisterInitialState){
//                                  return ElevatedButton(onPressed: ()async{
                   
//             // context.read<RegisterBloc>().add(
          
          
//             //                                 );
//                                             },          child: Text(SIGNUP));
                                        
//                   }
                     
//                          else if (state is ErrorState) {
//                       return SizedBox(
//                         height: 300,
//                         child: Column(
//                           children: [
//                           ElevatedButton(onPressed: ()async{
                   
//             // context.read<RegisterBloc>().add(
          
           
          
//             //                                 );
//                                             },          child: Text(SIGNUP)),
                                        
//                             Text(
//                               state.message,
//                               style: TextStyle(fontSize: 20, color: Colors.red),
//                             )
//                           ],
//                         ),
//                       );
//                     } else if (state is SuccessRegisterState) {
//                       return Container(
//                         width: 200,
//                         height: 100,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.green),
//                         child: Center(
//                           child: Icon(
//                             Icons.verified,
//                             color: Colors.white,
//                           ),
//                         ),
//                       );
//                     } else {
//                       return CircularProgressIndicator();
//                     }
//                                },
//                              ),



//           ],
//         ),

//           // }),
//       );
//         }),
//     );
//   }
// }
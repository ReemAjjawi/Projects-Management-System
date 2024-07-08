import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/login/view/login.dart';
import 'package:project_managment_state_managment_bloc/feature/auth/register/view/register.dart';
import 'package:project_managment_state_managment_bloc/feature/tasks/add_task_field/view/tasks.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/config/bloc_observe_config.dart';
import 'core/config/get_it_config.dart';
import 'feature/create&join/create&join.dart';
import 'feature/featched_project.dart/view/fetch_project.dart';
import 'feature/project_creation/view/project_creation.dart';
import 'utility.dart/colored_textfield.dart';

void main() async{
   // WidgetsFlutterBinding.ensureInitialized();
await  setup();
  Bloc.observer = MyBlocObserver();
 // print(core.get<SharedPreferences>().getString('token'));
  runApp(MyApp ());
}
late double width;
late double height;


class MyApp extends StatelessWidget {
   MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.sizeOf(context).width;
    height=MediaQuery.sizeOf(context).height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
   
      home:Register()
    );
  }
}




//   @override
//   Future<ResultModel> getCat() async {
//     try {
//       if (cat != null) {
//         print("From Cache");
//         return cat!;
//       } else {
//         print("From Server");
//         response = await req.get(baseurl + 'cats/1');
//         if (response.statusCode == 200) {
//           cat = CatModel.fromMap(response.data);

//           return cat!;
//         } else {
//           return ErrorModel(message: "There is no Internet");
//         }
//       }
//     } catch (e) {
//       return ExceptionModel(message: e.toString());
//     }
//   }

//   @override
//   Future<ResultModel> getAllCat() async {
//     try {
//       if (cats.isNotEmpty) {
//         return ListOf(modelList: cats);
//       } else {
//         response = await req.get(baseurl + "cats");
//         if (response.statusCode == 200) {
//           return ListOf<CatModel>(
//               modelList: List.generate(
//             response.data.length,
//             (index) => CatModel.fromMap(response.data[index]),
//           ));
//         } else {
//           return ErrorModel(message: 'There Is a Problem');
//         }
//       }
//     } catch (e) {
//       return ExceptionModel(message: e.toString());
//     }
//   }
// }




        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: Image.asset('assets/cup_of_coffe_ba.png').image,
        //         fit: BoxFit.cover)),

        //  Expanded(
        //       child: Container(
        //     width: double.maxFinite,
        

                    // Container(
                    //           height: 75,
                    //           width: 75,
                    //           child: Image.asset('assets/cup_of_coffe_ba.png'))
                    //     ],
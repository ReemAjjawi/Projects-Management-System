
// class HomePage extends StatelessWidget {
//   HomePage({super.key});




//   Future<UserInfoModel?> getMyInfo() async {
//     try {
//       response =
//           await dio.get('https://dummyjson.com/auth/me', options: getHeader());
//       if (response.statusCode == 200) {
//         UserInfoModel user = UserInfoModel.fromMap(response.data);
//         return user;
//       } else {
//         return null;
//       }
//     } on DioException catch (e) {
//       print(e);
//       return null;
//     }
//   }
// }








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

// class HomePageWithList extends StatelessWidget {
//   HomePageWithList({super.key});

//   ValueNotifier<ResultModel> result = ValueNotifier(ResultModel());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ValueListenableBuilder(
//         valueListenable: result,
//         builder: (context, value, child) {
//           if (value is ListOf<CatModel>) {
//             return ListView.builder(
//                 itemCount: value.modelList.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(value.modelList[index].name),
//                     leading: Image.network(
//                       value.modelList[index].image,
//                       errorBuilder: (context, error, stackTrace) {
//                         return FlutterLogo();
//                       },
//                     ),
//                   );
//                 });
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
//         result.value = await CatServiceImp().getAllCat();
//       }),
//     );
//   }
// }

// class HomePageWithListBird extends StatelessWidget {
//   HomePageWithListBird({super.key});

//   ValueNotifier<ResultModel> result = ValueNotifier(ResultModel());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder(
//         valueListenable: result,
//         builder: (context, value, child) {
//           if (value is ListOf<BirdModel>) {
//             return ListView.builder(
//                 itemCount: value.modelList.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(value.modelList[index].name),
//                     leading: Image.network(value.modelList[index].image),
//                   );
//                 });
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
//         result.value = await BirdServiceImp().getAllBird();
//       }),
//     );
//   }
// }

// class TempCounterExample extends StatelessWidget {
//   const TempCounterExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: IconButton(
//             onPressed: () {
//               context.read<CounterController>().addToCoutner();
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => ProviderCounter()));
//             },
//             icon: Icon(Icons.add)),
//       ),
//     );
//   }
// }

// class ProviderCounter extends StatelessWidget {
//   const ProviderCounter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer<CounterController>(
//         builder: (context, value, child) {
//           return Center(
//             child: Text(value.coutner.toString()),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         context.read<CounterController>().addToCoutner();
//       }),
//     );
//   }
// }











// import 'package:flutter/material.dart';

// import 'model/quiz_model.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: QuizPage(),
//     );
//   }
// }

// TextEditingController username = TextEditingController();

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         // itemExtent: 400,
//         scrollDirection: Axis.vertical,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: username,
//               onChanged: (value) {
//                 // print(username.text);
//               },
//               decoration: InputDecoration(
//                   // ? fill color is realated to filled named parametar
//                   // filled: true,
//                   // fillColor: Colors.grey,
//                   hintText: "Email",
//                   // helperText: "UserName",
//                   // prefix: Icon(Icons.search),
//                   prefixIcon: const Icon(Icons.search),
//                   // labelText: "UserName",
//                   // icon: FlutterLogo(),
//                   // label: FlutterLogo(),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20))),
//             ),
//           ),
//           ListTile(
//             // ! hover colors is realated to ontap
//             hoverColor: Colors.red,
//             onTap: () {
//               print(username.text);
//             },

//             // ? show functionalaty in statefull widget
//             // enabled: false,
//             // selected: true,
//             // mouseCursor: SystemMouseCursors.help,

//             title: const Text("Hello World"),
//             subtitle: const Text(
//                 "Laboris dolor labore do laboris do commodo sit laborum aute sint ex."),
//             leading: const CircleAvatar(
//               child: Icon(Icons.person),
//             ),
//             trailing: const Icon(Icons.search),
//           ),
//           Divider(
//             color: Colors.pink.shade100,
//             indent: 10,
//             endIndent: 20,
//             // thickness: 3,
//           ),
//           Dismissible(
//             onDismissed: (direction) {
//               if (direction == DismissDirection.endToStart) {
//                 print("Hello wolrd");
//               } else {
//                 print("No Hello");
//               }
//             },
//             background: Container(
//               color: Colors.green,
//             ),
//             movementDuration: const Duration(seconds: 3),

//             // ? to Make dissmiss in one direction
//             // direction: DismissDirection.endToStart,
//             secondaryBackground: Container(
//               alignment: Alignment.centerRight,
//               color: Colors.red,
//               child: const Icon(Icons.delete),
//             ),
//             key: GlobalKey(),
//             child: const ListTile(
//               title: Text("Hello World"),
//               subtitle: Text(
//                   "Laboris dolor labore do laboris do commodo sit laborum aute sint ex."),
//               leading: Icon(Icons.person),
//               trailing: Icon(Icons.search),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: InkWell(
//         onTap: () {
//           if (username.text == "Hello") {
//             // ? ...nextPage()
//           } else {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 dismissDirection: DismissDirection.horizontal,
//                 showCloseIcon: true,
//                 behavior: SnackBarBehavior.floating,
//                 action: SnackBarAction(label: 'active', onPressed: () {}),
//                 backgroundColor: Colors.red,
//                 content: const Text("names[index],"),
//               ),
//             );
//           }
//         },
//         child: Container(
//           width: 50,
//           height: 50,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.blue),
//             shape: BoxShape.circle,
//           ),
//           child: const Icon(
//             Icons.add,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//     );
//   }
// }

// List<String> names = [
//   "Lama",
//   "Eanas",
//   "Doaaa",
//   "Bayan",
//   "Aya",
//   "Yasmen",
//   "Noor",
//   "Reem",
//   "Qamar",
//   "Arowa",
//   "Ranem",
//   "Noor",
//   "Ola",
//   "Ghalia",
//   "Esraa",
//   "Abdalaziz"
// ];

// class DynamicUIFromModel extends StatelessWidget {
//   const DynamicUIFromModel({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         // physics: BouncingScrollPhysics(),
//         itemCount: names.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             onTap: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   dismissDirection: DismissDirection.horizontal,
//                   showCloseIcon: true,
//                   behavior: SnackBarBehavior.floating,
//                   action: SnackBarAction(label: 'active', onPressed: () {}),
//                   backgroundColor: Colors.green,
//                   content: Text(
//                     names[index],
//                   ),
//                 ),
//               );
//             },
//             leading: CircleAvatar(
//               child: Text((index + 1).toString()),
//             ),
//             title: Text(
//               names[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// List<QuizModel> quizModel = [
//   QuizModel(
//       question: "How Long Are You ?",
//       answers: ["190", "170", "130", "160", "100"],
//       indexOfCorrectAnswer: 2),
//   QuizModel(
//       question: "How Old Are You ?",
//       answers: ["19", "17", "13", "16"],
//       indexOfCorrectAnswer: 1),
//   QuizModel(
//       question: "How Much Cost to did you pay ?",
//       answers: ["190 \$", "170 \$", "130 \$", "000 \$", "100 \$"],
//       indexOfCorrectAnswer: 3),
//         QuizModel(
//       question: "How Long Are You ?",
//       answers: ["190", "170", "130", "160", "100"],
//       indexOfCorrectAnswer: 2),
//   QuizModel(
//       question: "How Old Are You ?",
//       answers: ["19", "17", "13", "16"],
//       indexOfCorrectAnswer: 1),
//   QuizModel(
//       question: "How Much Cost to did you pay ?",
//       answers: ["190 \$", "170 \$", "130 \$", "000 \$", "100 \$"],
//       indexOfCorrectAnswer: 3)
// ];

// PageController pageController = PageController();


// class QuizPage extends StatelessWidget {
//   const QuizPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         controller: pageController,
//         itemCount: quizModel.length,
//         itemBuilder: (context, ind) {
//           return Scaffold(
//             body: Column(
//               children: [
//                 ListTile(
//                   tileColor: Colors.grey,
//                   title: Text(quizModel[ind].question),
//                 ),
//                 SizedBox(
//                   height: 400,
//                   child: ListView.builder(
//                     itemCount: quizModel[ind].answers.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         onTap: () {
//                           if (index == quizModel[ind].indexOfCorrectAnswer) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 behavior: SnackBarBehavior.floating,
//                                 backgroundColor: Colors.green,
//                                 content: Text(
//                                   "Correct Answer!!!!",
//                                 ),
//                               ),
//                             );
//                             pageController.nextPage(
//                                 duration: const Duration(seconds: 2),
//                                 curve: Curves.bounceInOut);
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 behavior: SnackBarBehavior.floating,
//                                 backgroundColor: Colors.red,
//                                 content: Text("Sorry , This is Wrong Answer"),
//                               ),
//                             );
//                           }
//                         },
//                         subtitle: Text(quizModel[ind].answers[index]),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



//10
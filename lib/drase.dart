
// class HomePage extends StatelessWidget {
//   HomePage({super.key});

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
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

late int x;
class FieldAdditionEvent {
}


sealed class FieldAdditionState {}

final class FieldInitialAdditionState extends FieldAdditionState {
  

}

class ListFieldAdditionSuccessState extends FieldAdditionState {
List<String> cont;
int x;
  ListFieldAdditionSuccessState({
       required this.x,
    required this.cont,
  });

}




class ThirdState extends FieldAdditionState {
List<String> cont;
  ThirdState({
    required this.cont,
  });

}


class Addition  extends FieldAdditionEvent{
List<String> cont;
int x;

  Addition({
    required this.cont,
           required this.x,

  });
}

class FieldAdditionBloc extends Bloc<FieldAdditionEvent, FieldAdditionState> {

  FieldAdditionBloc(
  ) : super(FieldInitialAdditionState()) {
 
    on<Addition>(
      (event, emit)  {
        print("hi");
   
      
   List <String>  cont = event.cont;
   x=event.x;
   print("hfgjj");
print(x);
print(cont);
      if (cont !=[]) {
        emit(ListFieldAdditionSuccessState(cont: cont,x:x));}

        
        }  
    );
  
  }}


// class AnimalBloc extends Bloc<AnimalEvent, AnimalState> {
//   AnimalBloc() : super(AnimalInitial()) {
//     //تابع من النت اول شي بعطيه حالة اللودينغ
//     on<GetAnimal>((event, emit) async {
//       emit(LoadingState());
//       ResultModel response = await AnimalServiceImp().getAnimal();

//       if (response is ListOf<AnimalModel>) {
//         emit(AnimalListSuccess(animals: response.data));
//         // (animals: response)); ليش مابعتنا بس ريسبونس وشو بصير لوو قلنا
//         //   if (response is List <AnimalModel>) {
//       } else {
//         emit(ErrorState());
//       }
//     });


// on<CreateNewAnimal>(
//       (event, emit) async {
//         emit(LoadingState());
//         // ! We Can Find The attribute of Event in the 'event' object
//         ResultModel result =
//             await AnimalServiceImp().createNewAniml(event.name);
//         if (result is AnimalModel) {
//           emit(SuccessAnimalCreated());
//         } else {
//           emit(ErrorState());
//         }
//       },
//     );
//   }
//}

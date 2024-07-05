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



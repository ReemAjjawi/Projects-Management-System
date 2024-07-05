// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

late int x;
class FieldAdditionEvent {
}




class Addition  extends FieldAdditionEvent{
List<String> cont;
int x;

  Addition({
    required this.cont,
           required this.x,

  });
}




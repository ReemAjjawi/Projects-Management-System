class ResultModel{
  
}

class ExceptionModel extends ResultModel {
  String message;
  ExceptionModel({
    required this.message,
  });

}
class ErrorModel extends ResultModel {
  String message;
  ErrorModel({
    required this.message,
  });

}


class ListOf<T> extends ResultModel {
  List<T> dataList;
  ListOf({
    required this.dataList,
  });
}
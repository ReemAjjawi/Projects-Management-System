import 'dart:convert';



class FeatchTasksModel {
  int taskId;
  String taskDescription;
  String taskStatus;
  // bool hasBugs;
  // List<Bug> bugs;
  // int taskProject;
  // DateTime taskCreateDate;
  // DateTime taskUpdateDate;
  // int taskCreatedBy;
  // int taskUpdatedBy;

  FeatchTasksModel({
    required this.taskId,
    required this.taskDescription,
    required this.taskStatus,
    // required this.hasBugs,
    // required this.bugs,
    // required this.taskProject,
    // required this.taskCreateDate,
    // required this.taskUpdateDate,
    // required this.taskCreatedBy,
    // required this.taskUpdatedBy,
  });

  factory FeatchTasksModel.fromJson(Map<String, dynamic> json) => FeatchTasksModel(
    taskId: json["taskId"],
    taskDescription: json["taskDescription"],
    taskStatus: json["taskStatus"],
    // hasBugs: json["hasBugs"],
    // bugs: List<Bug>.from(json["bugs"].map((x) => Bug.fromJson(x))),
    // taskProject: json["taskProject"],
    // taskCreateDate: DateTime.parse(json["taskCreateDate"]),
    // taskUpdateDate: DateTime.parse(json["taskUpdateDate"]),
    // taskCreatedBy: json["taskCreatedBy"],
    // taskUpdatedBy: json["taskUpdatedBy"],
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "taskDescription": taskDescription,
    "taskStatus": taskStatus,
    // "hasBugs": hasBugs,
    // "bugs": List<dynamic>.from(bugs.map((x) => x.toJson())),
    // "taskProject": taskProject,
    // "taskCreateDate": taskCreateDate.toIso8601String(),
    // "taskUpdateDate": taskUpdateDate.toIso8601String(),
    // "taskCreatedBy": taskCreatedBy,
    // "taskUpdatedBy": taskUpdatedBy,
  };
}

// class Bug {
//   int id;
//   String title;
//   String description;
//   int priority;
//   List<Comment> comments;
//   DateTime createDate;
//   int createdBy;

//   Bug({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.priority,
//     required this.comments,
//     required this.createDate,
//     required this.createdBy,
//   });

//   factory Bug.fromJson(Map<String, dynamic> json) => Bug(
//     id: json["id"],
//     title: json["title"],
//     description: json["description"],
//     priority: json["priority"],
//     comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
//     createDate: DateTime.parse(json["createDate"]),
//     createdBy: json["createdBy"],
//   );

//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "title": title,
//     "description": description,
//     "priority": priority,
//     "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
//     "createDate": createDate.toIso8601String(),
//     "createdBy": createdBy,
//   };
// }

// class Comment {
//   int id;
//   String comment;
//   String author;
//   DateTime createDate;
//   int createdBy;

//   Comment({
//     required this.id,
//     required this.comment,
//     required this.author,
//     required this.createDate,
//     required this.createdBy,
//   });

//   factory Comment.fromJson(Map<String, dynamic> json) => Comment(
//     id: json["id"],
//     comment: json["comment"],
//     author: json["author"],
//     createDate: DateTime.parse(json["createDate"]),
//     createdBy: json["createdBy"],
//   );

//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "comment": comment,
//     "author": author,
//     "createDate": createDate.toIso8601String(),
//     "createdBy": createdBy,
//   };
// }

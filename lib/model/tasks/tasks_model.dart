// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';

List<TaskModel> taskModelFromJson(String str) => List<TaskModel>.from(json.decode(str).map((x) => TaskModel.fromJson(x)));

String taskModelToJson(List<TaskModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskModel {
    String taskDescription;
    String taskStatus;
    int project_id;

    TaskModel({
        required this.taskDescription,
        required this.taskStatus,
        required this.project_id,
    });

    factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        taskDescription: json["taskDescription"],
        taskStatus: json["taskStatus"],
        project_id: json["project_id"],
    );

    Map<String, dynamic> toJson() => {
        "taskDescription": taskDescription,
        "taskStatus": taskStatus,
        "project_id": project_id,
    };
}

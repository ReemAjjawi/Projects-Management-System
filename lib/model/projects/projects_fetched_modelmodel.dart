// To parse this JSON data, do
//
//     final projectsModel = projectsModelFromJson(jsonString);

import 'dart:convert';

import 'package:project_managment_state_managment_bloc/model/handling/handle_model.dart';

List<ProjectInformationModel> projectsModelFromJson(String str) => List<ProjectInformationModel>.from(json.decode(str).map((x) => ProjectInformationModel.fromJson(x)));

String projectsModelToJson(List<ProjectInformationModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectInformationModel extends ResultModel{
    int id;
    String name;
    String description;
    String status;
    DateTime createDate;
    String createdBy;

    ProjectInformationModel({
        required this.id,
        required this.name,
        required this.description,
        required this.status,
        required this.createDate,
        required this.createdBy,
    });

    factory ProjectInformationModel.fromJson(Map<String, dynamic> json) => ProjectInformationModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        status: json["status"],
        createDate: DateTime.parse(json["createDate"]),
        createdBy: json["createdBy"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "status": status,
        "createDate": createDate.toIso8601String(),
        "createdBy": createdBy,
    };
}

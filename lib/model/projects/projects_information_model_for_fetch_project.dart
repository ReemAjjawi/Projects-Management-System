// To parse this JSON data, do
//
//     final projectsModel = projectsModelFromJson(jsonString);

import 'dart:convert';

import 'package:project_managment_state_managment_bloc/model/handling/handle_model.dart';

List<ProjectInformationModelForFetchProject> projectsModelFromJson(String str) => List<ProjectInformationModelForFetchProject>.from(json.decode(str).map((x) => ProjectInformationModelForFetchProject.fromJson(x)));

String projectsModelToJson(List<ProjectInformationModelForFetchProject> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectInformationModelForFetchProject extends ResultModel{
    int id;
    String name;
    String description;
    String status;
    DateTime createDate;
    DateTime lastModified;
    int createdBy;
    int lastModifiedBy;

    ProjectInformationModelForFetchProject({
        required this.id,
        required this.name,
        required this.description,
        required this.status,
        required this.createDate,
        required this.lastModified,
        required this.createdBy,
        required this.lastModifiedBy,
    });

    factory ProjectInformationModelForFetchProject.fromJson(Map<String, dynamic> json) => ProjectInformationModelForFetchProject(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        status: json["status"],
        createDate: DateTime.parse(json["createDate"]),
        lastModified: DateTime.parse(json["lastModified"]),
        createdBy: json["createdBy"],
        lastModifiedBy: json["lastModifiedBy"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "status": status,
        "createDate": createDate.toIso8601String(),
        "lastModified": lastModified.toIso8601String(),
        "createdBy": createdBy,
        "lastModifiedBy": lastModifiedBy,
    };
}

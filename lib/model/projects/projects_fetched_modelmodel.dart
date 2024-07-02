// To parse this JSON data, do
//
//     final projectsModel = projectsModelFromJson(jsonString);

import 'dart:convert';

List<ProjectsModel> projectsModelFromJson(String str) => List<ProjectsModel>.from(json.decode(str).map((x) => ProjectsModel.fromJson(x)));

String projectsModelToJson(List<ProjectsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectsModel {
    int id;
    String name;
    String description;
    String status;
    DateTime createDate;
    DateTime lastModified;
    int createdBy;
    int lastModifiedBy;

    ProjectsModel({
        required this.id,
        required this.name,
        required this.description,
        required this.status,
        required this.createDate,
        required this.lastModified,
        required this.createdBy,
        required this.lastModifiedBy,
    });

    factory ProjectsModel.fromJson(Map<String, dynamic> json) => ProjectsModel(
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

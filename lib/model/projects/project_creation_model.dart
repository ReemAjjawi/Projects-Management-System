// To parse this JSON data, do
//
//     final projectModel = projectModelFromJson(jsonString);

import 'dart:convert';

ProjectModel projectModelFromJson(String str) => ProjectModel.fromJson(json.decode(str));

String projectModelToJson(ProjectModel data) => json.encode(data.toJson());

class ProjectModel {
    String projectName;
    String projectDescription;
    String projectStatus;

    ProjectModel({
        required this.projectName,
        required this.projectDescription,
        required this.projectStatus,
    });

    factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        projectName: json["projectName"],
        projectDescription: json["projectDescription"],
        projectStatus: json["projectStatus"],
    );

    Map<String, dynamic> toJson() => {
        "projectName": projectName,
        "projectDescription": projectDescription,
        "projectStatus": projectStatus,
    };
}

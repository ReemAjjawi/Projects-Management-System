class Api{
 
static String registerApi='auth/register';
 static  String loginApi='auth/login';

 static String logoutApi='auth/logout';
  //put

 //static String getProjectsApi='projects';
 //get

 static  String createProjectApi='projects';
 //post

 static  String createTasksApi='tasks';
 //post
  static  String getTasksApi='tasks/tasks-by-project/{project_id}'; 
  //get task for one project
  //get
    static  String deleteTasksApi='tasks/{id}';
//delete
    static  String deleteProjectApi='projects/';
//delete with put {id}

    static  String getProject='projects/';
    //get with put{id}


}
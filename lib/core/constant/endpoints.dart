/// This class [Endpoints] contains all the endpoints of the API
class Endpoints {
  static const String baseUrl = 'http://localhost:3000';

//Auth
  //post
  static const String login = '/auth/login';
  //post
  static const String register = '/auth/register';
  //post
  static const String logout = '/auth/logout';
//User
  //put
  static const String userUpdate = '/user/{id}';
  //delete
  static const String userDelete = '/user/delete';
  //get
  static const String getUser = '/user/{id}';

  //Projects
  //get
  static const String getProjects = '/projects/dashboard';
  //post
  static const String createProject = '/projects';
  //get
  static const String getProjectDetails = '/projects/{id}';
  //put
  static const String updateProject = '/projects/{id}';
  //delete
  static const String deleteProject = '/projects/{id}';
}

//import '../../../project/domain/entities/project.dart';

class User {
  final int userId;
  final String username;
  final String fullName;
  final String email;
  final int budget;
  final String password;
  //final List<Project> projects;

  User({
    required this.userId,
    required this.username,
    required this.fullName,
    required this.email,
    required this.budget,
    required this.password,
    /*required this.projects*/
  });
}

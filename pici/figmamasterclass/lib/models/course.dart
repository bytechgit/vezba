import 'package:figmamasterclass/models/selection.dart';
import 'package:figmamasterclass/models/user.dart';

class CourseModel {
  final User creator;
  final String title;
  final List<User> students;

  final String description;
  final SelectionModel selection;

  CourseModel({
    required this.creator,
    required this.title,
    required this.students,
    required this.description,
    required this.selection,
  });
}

import 'package:task_4/data/quiz_app_data.dart';

class CategoryModel {
  final String name;
  final List<Map<dynamic, dynamic>> listname;

  CategoryModel(
      {required this.name,required this.listname});
}

List<CategoryModel> categories = [
  CategoryModel(name: 'IQ Quiz',listname: iqQuestions),
  CategoryModel(name: 'E-Sport', listname: esportsQuestions),
  CategoryModel( name: 'Sports', listname: sportsQuestions),
];
import '../models/courses_response.dart';
import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class CoursesService {
  static const String url = 'https://shrouded-harbor-95996.herokuapp.com';

  static Future<CoursesResponse> courses() async {
    final response = await http.get(
      Uri.parse(url + '/courses'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final data = CoursesResponse.fromJson(body);
      return data;
    } else {
      throw Exception('Error al iniciar sesión. Su usuario o contraseña son incorrectos.');
    }
  }

  static Future<CoursesResponse> coursesid(String id) async {
    final response = await http.get(
      Uri.parse(url + '/courses' + id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final data = CoursesResponse.fromJson(body);
      return data;
    } else {
      throw Exception('Error al iniciar sesión. Su usuario o contraseña son incorrectos.');
    }
  }

  static Future<CoursesResponse> courseshis() async {
    final response = await http.get(
      Uri.parse(url + '/courses/history'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final data = CoursesResponse.fromJson(body);
      return data;
    } else {
      throw Exception('Error al iniciar sesión. Su usuario o contraseña son incorrectos.');
    }
  }
}

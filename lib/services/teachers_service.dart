import '../models/teachers_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TeachersService {
  static const String url = 'https://shrouded-harbor-95996.herokuapp.com';

  static Future<TeachersResponse> courses() async {
    final response = await http.get(
      Uri.parse(url + '/teachers'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final data = TeachersResponse.fromJson(body);
      return data;
    } else {
      throw Exception('Error al iniciar sesión. Su usuario o contraseña son incorrectos.');
    }
  }
}

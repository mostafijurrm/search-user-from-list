import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:search_user_from_list/user.dart';


class Services {
  static String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<Users>> getUsers() async {
    try{
      final response =  await http.get(url);
      List<Users> list = parseUsers(response.body);
      return list;
    }catch(e){
      throw Exception(e.toString());
    }
  }
  static List<Users> parseUsers(String responsebody){
    final parsed = json.decode(responsebody).cast<Map<String, dynamic>>();
    return parsed.map<Users>((json) => Users.fromJson(json)).toList();
  }
}
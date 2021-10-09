import 'package:http/http.dart' as http;
import 'package:flutter_list_from_api/model/userlist_model.dart';

class ResponseRepository{
  Future<List<UserlistModel>> getUsers() async {
    var apiUrl = Uri.parse('http://172.16.153.3:8000/api/v1/user/search');

    final response = await http.get(apiUrl);

    return userlistModelFromJson(response.body);
  }
}
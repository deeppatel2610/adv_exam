import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  String api = "https://restcountries.com/v3.1/all";

  Future<List> fetchApi() async {
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);
    if (response.statusCode == 200) {
      String json = response.body;
      List dataList = jsonDecode(json);
      return dataList;
    }
    return [];
  }
}

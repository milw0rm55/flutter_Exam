import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://opentdb.com/api.php?amount=10";

class API  {
  static Future getQuestions() {
    var url = baseUrl;
    return http.get(url);
  }
}
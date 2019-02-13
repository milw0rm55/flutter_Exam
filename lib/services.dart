import 'dart:async' show Future;
import 'package:examen_final/model/Questions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = "https://opentdb.com/api.php?amount=10";

Future _loadAddressAsset() async {
  var url = baseUrl;
  return http.get(url);
}

Future loadAddress() async {
  String jsonAddress = await _loadAddressAsset();
  final jsonResponse = json.decode(jsonAddress);
  Questions address = new Questions.fromJson(jsonResponse);
  print(address.incorrect_answer[1]);
}
import 'dart:async' show Future;
import 'package:examen_final/model/Questions.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = "https://opentdb.com/api.php?amount=10";

Future <String>_loadAddressAsset() async {
  var url = baseUrl;
  String respuesta = http.get(url) as String;
  return respuesta;
}

Future loadAddress() async {
  String jsonAddress = await _loadAddressAsset();
  final jsonResponse = json.decode(jsonAddress);
  Questions address = new Questions.fromJson(jsonResponse);
  print(address.incorrect_answer[1]);
}
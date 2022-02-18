import 'dart:convert';
import 'package:http/http.dart';


const _categoriesUrl = 'https://api.chucknorris.io/jokes/categories';
const _randomJokeUrl = 'https://api.chucknorris.io/jokes/random?category=';

Future <List> fetchCategories() async{
  final response = await get(Uri.parse(_categoriesUrl));
  return jsonDecode(response.body);
}

Future <Map<String, Object?>> fetchJoke(String category) async{
  var url = _randomJokeUrl + category;
  final response = await get(Uri.parse(url));
  return jsonDecode(response.body) as Map<String, Object?>;
}
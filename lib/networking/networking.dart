import 'dart:convert';
import 'package:http/http.dart';

const _categoriesUrl = 'https://api.chucknorris.io/jokes/categories';
const _categoryJokeUrl = 'https://api.chucknorris.io/jokes/random?category=';
const _randomJokeUrl = 'https://api.chucknorris.io/jokes/random';

Future<List> fetchCategories() async {
  final response = await get(Uri.parse(_categoriesUrl));
  return jsonDecode(response.body);
}

Future<Map<String, Object?>> fetchJoke(String category) async {
  String url;
  if (category == 'random') {
    url = _randomJokeUrl;
  } else {
    url = _categoryJokeUrl + category;
  }
  final response = await get(Uri.parse(url));
  return jsonDecode(response.body) as Map<String, Object?>;
}

import 'dart:convert';
import 'package:flutter_jugaadhai_tak_ankitpaswan/models/article.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> getArticles() async {
  final response = await http.get(Uri.parse(
      "https://my-json-server.typicode.com/jugaadhai/assignment-app/articles/"));

  if (response.statusCode == 200) {
    return List.from(json.decode(response.body))
        .map<Article>((article) => Article.fromMap(article))
        .toList();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<Article> getArticleDetail({required num id}) async {
  final response = await http.get(Uri.parse(
      " https://my-json-server.typicode.com/jugaadhai/assignment-app/articles/$id"));
  if (response.statusCode == 200) {
    return Article.fromJson(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

Future postFeedback({required Map<String, dynamic> feedbackForm}) async {
  final response =
      await http.post(Uri.parse("http://134.209.146.161:2949/api/Test"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: json.encode(feedbackForm));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

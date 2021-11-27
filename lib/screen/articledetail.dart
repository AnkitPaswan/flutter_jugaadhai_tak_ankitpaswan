// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_jugaadhai_tak_ankitpaswan/models/article.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/widget/Bottom_Nav.dart';

class ArticleDetail extends StatelessWidget {
  final Article article;
  const ArticleDetail({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back)),
        title: Text("Article Detail"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  article.articleHeading!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(
                  "https://jugaadhai.github.io/assignment-app/${article.imageUrl!}",
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Html(data: article.explanation!),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

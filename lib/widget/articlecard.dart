// import 'dart:js';

// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:flutter_jugaadhai_tak_ankitpaswan/models/article.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/screen/articledetail.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleDetail(
                      article: article,
                    )));
      },
      child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.white,
        child: SizedBox(
          width: 200,
          height: 450,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Image.network(
                  "https://jugaadhai.github.io/assignment-app/${article.imageUrl!}",
                ),

                SizedBox(
                  height: 24,
                ), //SizedBox
                Text(
                  article.articleHeading!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(children: [
                    Text(
                      article.admin!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ", ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      article.lastModifiedOn!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

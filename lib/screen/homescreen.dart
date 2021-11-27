import 'package:flutter/material.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/service/httpservice.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/widget/Bottom_Nav.dart';

import 'package:flutter_jugaadhai_tak_ankitpaswan/widget/articlecard.dart';

class ArticleList extends StatelessWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () => Navigator.of(context).pop(),
          //     icon: Icon(Icons.arrow_back)),
          title: Text("Article List"),
        ),
        body: FutureBuilder(
            future: getArticles(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(height: 12),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ArticleCard(
                        article: snapshot.data[index],
                      );
                    });
              }
            }),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}

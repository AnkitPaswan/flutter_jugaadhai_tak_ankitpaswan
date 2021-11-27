import 'package:flutter/material.dart';

import 'package:flutter_jugaadhai_tak_ankitpaswan/screen/feedback.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/screen/homescreen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ArticleList()));
            },
            child: Text(
              "Article",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          VerticalDivider(color: Colors.grey, thickness: 1.0),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => FeedbackForm()));
            },
            child: Text(
              "Feedback",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

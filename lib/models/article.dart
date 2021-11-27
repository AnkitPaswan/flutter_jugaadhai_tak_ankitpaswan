import 'dart:convert';

class Article {
  num? id;
  String? articleHeading;
  String? lastModifiedOn;
  String? miniDetail;
  String? imageUrl;
  String? admin;
  String? comImage;
  String? explanation;
  num? claps;
  bool? isBookmark;
  num? views;
  String? seoTitle;
  String? seoKeywords;
  bool? showCoffee;
  Article({
    this.id,
    this.articleHeading,
    this.lastModifiedOn,
    this.miniDetail,
    this.imageUrl,
    this.admin,
    this.comImage,
    this.explanation,
    this.claps,
    this.isBookmark,
    this.views,
    this.seoTitle,
    this.seoKeywords,
    this.showCoffee,
  });

  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'ArticleHeading': articleHeading,
      'LastModifiedOn': lastModifiedOn,
      'MiniDetail': miniDetail,
      'ImageUrl': imageUrl,
      'Admin': admin,
      'ComImage': comImage,
      'Explanation': explanation,
      'Claps': claps,
      'IsBookmark': isBookmark,
      'Views': views,
      'SeoTitle': seoTitle,
      'SeoKeywords': seoKeywords,
      'ShowCoffee': showCoffee,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      id: map['id'],
      articleHeading: map['articleHeading'],
      lastModifiedOn: map['lastModifiedOn'],
      miniDetail: map['miniDetail'],
      imageUrl: map['imageUrl'],
      admin: map['admin'],
      comImage: map['comImage'],
      explanation: map['explanation'],
      claps: map['claps'],
      isBookmark: map['isBookmark'],
      views: map['views'],
      seoTitle: map['seoTitle'],
      seoKeywords: map['seoKeywords'],
      showCoffee: map['showCoffee'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source));
}

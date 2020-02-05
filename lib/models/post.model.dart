import 'package:flutter/foundation.dart';

class PostModel {
  int id;
  String title;
  String content;
  String contentPreview;
  String author;
  int views;
  String imageSpotlight;
  String imagePost;

  PostModel({
    @required this.id,
    @required this.title,
    @required this.content,
    @required this.contentPreview,
    @required this.author,
    this.views,
    this.imageSpotlight,
    this.imagePost,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      contentPreview: json['contentPreview'],
      author: json['author'],
      views: json['views'],
      imageSpotlight: json['pathToImageSpotlight'],
      imagePost: json['pathToImagePost'],
    );
  }

  getText(string, maximumCaracter) {
    if (string.length > maximumCaracter) {
      return string.replaceRange(maximumCaracter, string.length, "...");
    }

    return string;
  }
}

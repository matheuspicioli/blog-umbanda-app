import 'dart:convert';

import 'package:blog_umbanda/models/comment.model.dart';
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
  List<dynamic> comments;

  PostModel({
    @required this.id,
    @required this.title,
    @required this.content,
    @required this.contentPreview,
    @required this.author,
    this.views,
    this.imageSpotlight,
    this.imagePost,
    @required this.comments,
  });

  factory PostModel.fromJson(Map<String, dynamic> jsonData) {
    List<dynamic> listComments = jsonData['comments']
        .map((comment) => CommentModel.fromJson(comment))
        .toList();

    return PostModel(
      id: jsonData['id'],
      title: jsonData['title'],
      content: jsonData['content'],
      contentPreview: jsonData['contentPreview'],
      author: jsonData['author'],
      views: jsonData['views'],
      imageSpotlight: jsonData['pathToImageSpotlight'],
      imagePost: jsonData['pathToImagePost'],
      comments: listComments,
    );
  }

  getText(string, maximumCaracter) {
    if (string.length > maximumCaracter) {
      return string.replaceRange(maximumCaracter, string.length, "...");
    }

    return string;
  }
}

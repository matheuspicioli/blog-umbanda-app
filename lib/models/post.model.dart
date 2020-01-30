import 'package:flutter/foundation.dart';

class PostModel {
  String title;
  String body;
  String author;
  int visualizers;
  String imageSpotlight;
  String imagePost;

  PostModel({
    @required this.title,
    @required this.body,
    @required this.author,
    this.visualizers,
    this.imageSpotlight,
    this.imagePost,
  });

  getText(string, maximumCaracter) {
    if (string.length > maximumCaracter) {
      return string.replaceRange(maximumCaracter, string.length, "...");
    }

    return string;
  }
}

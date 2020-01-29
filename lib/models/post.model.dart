import 'package:flutter/foundation.dart';

class PostModel {
  String title;
  String body;
  int visualizers;
  String imageSpotlight;
  String imagePost;

  PostModel({
    @required this.title,
    @required this.body,
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

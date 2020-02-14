import 'package:flutter/material.dart';

class CommentModel {
  int id;
  String text;
  String createdAt;

  CommentModel({
    @required this.id,
    @required this.text,
    @required this.createdAt,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      text: json['text'],
      createdAt: json['created_at'],
    );
  }
}

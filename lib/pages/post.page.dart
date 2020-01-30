import 'package:blog_umbanda/models/post.model.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  PostModel post;

  Post({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('Pressionado');
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                post.title,
                style: TextStyle(
                  fontFamily: "Qing Ke Huang You",
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  post.body,
                  style: TextStyle(
                    fontFamily: "Qing Ke Huang You",
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

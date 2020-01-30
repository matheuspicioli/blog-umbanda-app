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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: EdgeInsets.only(top: 25, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Matheus Picioli",
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "20/01/2020 às 18:39",
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.remove_red_eye),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('${post.visualizers}'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  post.body,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

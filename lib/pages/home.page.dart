import 'package:blog_umbanda/models/post.model.dart';
import 'package:blog_umbanda/widgets/post-item.widget.dart';
import 'package:blog_umbanda/widgets/post-spotlight.widget.dart';
import 'package:flutter/material.dart';
import 'package:blog_umbanda/services/post.service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PostModel> posts = [];
  List<Widget> widgets = [];

  @override
  void initState() {
    PostService.fetchPosts().then((List<PostModel> postsApi) {
      print('DEBUG: Alright with fetch posts');
      setState(() {
        posts = postsApi;
        for (var post in posts) {
          widgets.add(PostItem(post: post));
        }
      });
    }).catchError((onError) {
      print('DEBUG: Error on fetch posts');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog umbanda"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('Pressionado');
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          PostSpotlight(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: widgets.length > 0
                  ? widgets
                  : <Widget>[
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:blog_umbanda/models/post.model.dart';
import 'package:blog_umbanda/widgets/post-item.widget.dart';
import 'package:blog_umbanda/widgets/post-spotlight.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = [
      new PostModel(
        title: "Florestas",
        body:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam auctor semper justo eget luctus. Donec non erat nec nibh tempus aliquam. Proin ac diam eu tortor vulputate facilisis. Etiam at.",
        imagePost:
            "https://image.freepik.com/fotos-gratis/indian-beautiful-forest-landscapes_1376-210.jpg",
        visualizers: 30,
      ),
      // new PostItemBloc(
      //     title: "Oxóssi",
      //     body: "Breve descrição sobre oxóssi",
      //     imagePost:
      //         "https://img.elo7.com.br/product/zoom/1F29224/banner-oxossi-o-cacador-banner-oxossi.jpg"),
    ];
    List<Widget> widgets = [];

    for (var post in posts) {
      widgets.add(PostItem(post: post));
    }

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
              children: widgets,
            ),
          ),
        ],
      ),
    );
  }
}

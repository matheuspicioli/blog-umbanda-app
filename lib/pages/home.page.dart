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
        contents: [
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
            "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
            "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
        ],
        author: "Matheus Picioli",
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

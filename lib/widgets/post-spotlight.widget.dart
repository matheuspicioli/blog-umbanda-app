import 'package:blog_umbanda/models/post.model.dart';
import 'package:blog_umbanda/widgets/post-item-spotlight.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostSpotlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = 250.0;
    List<PostModel> posts = [
      new PostModel(
        id: 1,
        title: "Xangô",
        content: "Breve descrição sobre xangô",
        contentPreview: "Breve descrição sobre xangô",
        author: "Matheus Picioli",
        imageSpotlight:
            "https://static.umbandaeucurto.com/uploads/2017/06/xang%C3%B4.jpg",
        views: 0,
      ),
      new PostModel(
        id: 1,
        title: "Oxóssi",
        content: "Breve descrição sobre oxóssi",
        contentPreview: "Breve descrição sobre oxóssi",
        author: "Matheus Picioli",
        imageSpotlight:
            "https://img.elo7.com.br/product/zoom/1F29224/banner-oxossi-o-cacador-banner-oxossi.jpg",
        views: 0,
      ),
      new PostModel(
        id: 1,
        title: "Iansã",
        content: "Breve descrição sobre Yansã",
        contentPreview: "Breve descrição sobre Yansã",
        author: "Matheus Picioli",
        imageSpotlight:
            "https://www.umbandabrasil.com.br/portal/media/k2/items/cache/60959e8d8c34f5c00b9627dfd768f462_M.jpg",
        views: 0,
      ),
    ];
    List<Widget> widgets = [];

    for (var post in posts) {
      widgets.add(PostItemSpotlight(post: post));
    }

    return Container(
      width: double.infinity,
      height: height,
      color: Colors.grey.withOpacity(0.2),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widgets,
      ),
    );
  }
}

import 'package:blog_umbanda/bloc/post-item-bloc.dart';
import 'package:blog_umbanda/widgets/post-item-recently.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostRecently extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = 250.0;
    List<PostItemBloc> posts = [
      new PostItemBloc(
          title: "Xangô",
          body: "Breve descrição sobre xangô",
          imageRecently:
              "https://static.umbandaeucurto.com/uploads/2017/06/xang%C3%B4.jpg"),
      new PostItemBloc(
          title: "Oxóssi",
          body: "Breve descrição sobre oxóssi",
          imageRecently:
              "https://img.elo7.com.br/product/zoom/1F29224/banner-oxossi-o-cacador-banner-oxossi.jpg"),
      new PostItemBloc(
          title: "Iansã",
          body: "Breve descrição sobre Yansã",
          imageRecently:
              "https://www.umbandabrasil.com.br/portal/media/k2/items/cache/60959e8d8c34f5c00b9627dfd768f462_M.jpg"),
    ];
    List<Widget> widgets = [];

    for (var post in posts) {
      widgets.add(PostItemRecently(post: post));
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

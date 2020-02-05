import 'package:blog_umbanda/models/post.model.dart';
import 'package:blog_umbanda/services/post.service.dart';
import 'package:blog_umbanda/widgets/comments.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PostPage extends StatelessWidget {
  PostModel post;

  PostPage({this.post}) {
    PostService.pushView(post.id);
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listOfMap = [
      {
        "author": "Maria Gadú",
        "created_at": "09/01/2020 às 10:00",
        "text":
            'Olá Thiengo. Achei o artigo muito bom, mas tem que melhorar o layout do app men KKK'
      },
      {
        "author": "Matheus Picioli",
        "created_at": "09/01/2020 às 10:00",
        "text":
            'Olá Thiengo. Achei o artigo muito bom, mas tem que melhorar o layout do app men KKK'
      },
      {
        "author": "Outra pessoa",
        "created_at": "09/01/2020 às 10:00",
        "text":
            'Olá Thiengo. Achei o artigo muito bom, mas tem que melhorar o layout do app men KKK'
      },
    ];

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
      body: ListView(
        // width: double.infinity,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(post.imagePost != null
                    ? post.imagePost
                    : 'https://image.freepik.com/fotos-gratis/indian-beautiful-forest-landscapes_1376-210.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  post.title,
                  style: TextStyle(
                    fontFamily: "Qing Ke Huang You",
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 25, bottom: 10, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Matheus Picioli",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                // +1 pq ele estará lendo
                                // trick para manter app = bd
                                '${post.views + 1}',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "20/01/2020 às 18:39",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Html(
                    padding: EdgeInsets.all(8.0),
                    data: post.content,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Comments(comments: listOfMap),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

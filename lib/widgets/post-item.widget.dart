import 'package:blog_umbanda/models/post.model.dart';
import 'package:blog_umbanda/pages/post.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final double widthImage = 50.0;
  final double heightImage = 50.0;
  PostModel post;

  PostItem({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 1.0,
              offset: Offset(0.2, 1),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Image(
                    width: widthImage,
                    height: heightImage,
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/11/08/15/21/user-1808597_960_720.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "Matheus Augusto Picioli",
                      style: TextStyle(
                        fontFamily: "Qing Ke Huang You",
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.watch_later,
                    color: Theme.of(context).primaryColor,
                    size: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "1 min",
                      style: TextStyle(
                        fontFamily: "Qing Ke Huang You",
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: MaterialButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => Post(post: post),
                      ));
                },
                child: Image(
                  width: double.infinity,
                  height: 270,
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                    post.imagePost != null
                        ? post.imagePost
                        : "https://image.freepik.com/fotos-gratis/indian-beautiful-forest-landscapes_1376-210.jpg",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.remove_red_eye,
                    color: Theme.of(context).primaryColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                        post.visualizers != null ? "${post.visualizers}" : ""),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Container(
                width: double.infinity,
                // color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => Post(post: post),
                            ));
                      },
                      child: Text(
                        post.getText(post.title, 30),
                        style: TextStyle(
                          fontFamily: "Qing Ke Huang You",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ), //TÍTULO
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        post.getText(post.body, 60),
                        style: TextStyle(
                          fontFamily: "Qing Ke Huang You",
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ), //CORPO TEXTO
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

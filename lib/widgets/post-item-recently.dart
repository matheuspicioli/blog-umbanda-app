import 'package:blog_umbanda/bloc/post-item-bloc.dart';
import 'package:blog_umbanda/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostItemRecently extends StatelessWidget {
  final double width = 150.0;
  final double height = 220.0;
  PostItemBloc post;

  PostItemRecently({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.5, top: 25, bottom: 25, right: 12.5),
      child: MaterialButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => Post(post: post),
              ));
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                post.imageRecently != null
                    ? post.imageRecently
                    : "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post.title,
                      style: TextStyle(
                        fontFamily: "Qing Ke Huang You",
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Leia mais",
                          style: TextStyle(
                            fontFamily: "Qing Ke Huang You",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

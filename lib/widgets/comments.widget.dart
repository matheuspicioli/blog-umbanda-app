import 'package:blog_umbanda/models/comment.model.dart';
import 'package:blog_umbanda/widgets/dialog-comment.widget.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  List<dynamic> comments;

  Comments({@required this.comments});

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  List<Widget> getCommentsWidget(context) {
    if (widget.comments == null) {
      return <Widget>[];
    }
    return widget.comments.map((comment) {
      // adicionar autor na resposta
      String author = 'Matheus Picioli';

      return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image(
                width: 50.0,
                height: 50.0,
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/11/08/15/21/user-1808597_960_720.png',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            author.length >= 15
                                ? author.replaceRange(15, author.length, '.')
                                : author,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            comment.createdAt,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Text(
                              comment.text,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    int quantity = widget.comments != null ? widget.comments.length : 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Comentários ($quantity)',
          style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
        ),
        ...getCommentsWidget(context),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: MaterialButton(
            onPressed: () {
              dialogTest(context);
            },
            padding: EdgeInsets.all(0),
            child: Text(
              "COMENTAR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }

  dialogTest(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => DialogComment(addComment: addComment),
    );
  }

  addComment(CommentModel comment) {
    print(comment);
    setState(() {
      widget.comments.add(comment);
    });
  }
}

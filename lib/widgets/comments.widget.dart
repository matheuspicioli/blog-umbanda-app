import 'package:blog_umbanda/widgets/dialog-comment.widget.dart';
import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  List<Map<String, dynamic>> comments;

  Comments({@required this.comments});

  List<Widget> getCommentsWidget(context) {
    return comments.map((comment) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image(
                        width: 50.0,
                        height: 50.0,
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/11/08/15/21/user-1808597_960_720.png'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Matheus Picioli',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '09/01/2020 às 14:35',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              comment['text'],
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
    int quantity = comments.length;

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
      builder: (BuildContext context) => DialogComment(),
    );
  }
}

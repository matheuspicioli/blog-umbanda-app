import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double widthImage = 50.0;
    final double heightImage = 50.0;

    return Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Container(
        width: double.infinity,
        height: 400,
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
                    size: 5,
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
              child: Image(
                width: double.infinity,
                height: 270,
                fit: BoxFit.fitHeight,
                image: NetworkImage(
                  "https://image.freepik.com/fotos-gratis/indian-beautiful-forest-landscapes_1376-210.jpg",
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
                    child: Text("16"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.more_vert),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

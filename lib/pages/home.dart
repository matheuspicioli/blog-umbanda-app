import 'package:blog_umbanda/widgets/post-item.dart';
import 'package:blog_umbanda/widgets/post-recently.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog umbanda"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              print('Pressionado');
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          PostRecently(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                PostItem(),
                PostItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

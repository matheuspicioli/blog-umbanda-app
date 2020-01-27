import 'package:blog_umbanda/widgets/post-item-recently.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostRecently extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = 250.0;

    return Container(
      width: double.infinity,
      height: height,
      color: Colors.grey.withOpacity(0.2),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PostItemRecently(),
          PostItemRecently(),
          PostItemRecently(),
          PostItemRecently(),
        ],
      ),
    );
  }
}

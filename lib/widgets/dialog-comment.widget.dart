import 'dart:math';

import 'package:blog_umbanda/models/comment.model.dart';
import 'package:flutter/material.dart';

class DialogComment extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _comment;
  Function addComment;

  DialogComment({this.addComment});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Publicar comentário'),
      content: Container(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Comentário:',
                  // border: UnderlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(5)),
                  // ),
                ),
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                maxLines: 5,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Por favor, insira um comentário';
                  } else if (value.length <= 5) {
                    return 'O comentário deve ter mais de 5 caracteres';
                  }
                },
                onSaved: (value) => _comment = value,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, right: 10.0),
                    child: FlatButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        'Cancelar',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: FlatButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        _submit(context);
                      },
                      color: Colors.green,
                      child: Text(
                        'Salvar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      elevation: 24.0,
      actions: <Widget>[],
    );
  }

  void _submit(context) {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      this.addComment(new CommentModel(
        id: Random(555555).nextInt(999999),
        text: _comment,
        createdAt: DateTime.now().toString(),
      ));
      Navigator.of(context).pop();
    }
  }
}

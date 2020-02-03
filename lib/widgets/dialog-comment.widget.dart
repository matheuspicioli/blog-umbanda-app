import 'package:flutter/material.dart';

class DialogComment extends StatefulWidget {
  @override
  _DialogCommentState createState() => _DialogCommentState();
}

class _DialogCommentState extends State<DialogComment> {
  final _formKey = GlobalKey<FormState>();
  String _comment;

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
                decoration: InputDecoration(labelText: 'Comentário: '),
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
                      onPressed: _submit,
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
      actions: <Widget>[
        // FlatButton(
        //   padding: EdgeInsets.all(0),
        //   child: Text('Cancelar'),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //     print("Cancelar");
        //   },
        // ),
        // FlatButton(
        //   padding: EdgeInsets.all(0),
        //   child: Text("Enviar"),
        //   onPressed: () {
        //     // @TODO not implemented yet
        //     Navigator.of(context).pop();
        //     print("Enviado e fechado");
        //   },
        // ),
      ],
    );
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
  }

  // Widget getFormWidget() {
  //   return TextFormField(
  //     decoration:
  //         InputDecoration(labelText: 'Comentário', hintText: 'Comentário'),
  //   );
  // }
}

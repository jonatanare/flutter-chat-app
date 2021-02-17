import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mostrarAlerta(BuildContext context, String titulo, String subtitulo) {
  if (Platform.isAndroid) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(titulo),
        content: Text(subtitulo),
        actions: <Widget>[
          MaterialButton(
            child: Text('OK'),
            elevation: 5,
            color: Colors.blue,
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  showCupertinoDialog(
    context: context,
    builder: (_) => CupertinoAlertDialog(
      title: Text(titulo),
      content: Text(subtitulo),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text('OK'),
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context),
        )
      ],
    ),
  );
}

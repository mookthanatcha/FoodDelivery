import 'package:flutter/material.dart';

Future<void> normalDialog(BuildContext context, String message) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(message),
      children: <Widget>[
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "OK",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(80, 80, 80, 1);
  static const DEFAULT = Color.fromARGB(55, 112, 112, 112);
  static const OPERATION = Color.fromARGB(255, 13, 74, 255);
  static const RESULT = Color.fromARGB(190, 25, 255, 13);
  final Color color;
  final String? text;
  final void Function(String)? cb;
  Button({
    @required this.text,
    @required this.cb,
    this.color = DEFAULT,
  });
  Button.dark({
    @required this.text,
    @required this.cb,
    this.color = DARK,
  });
  Button.operation({
    @required this.text,
    @required this.cb,
    this.color = OPERATION,
  });
  Button.result({
    @required this.text,
    @required this.cb,
    this.color = RESULT,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          '${text}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () => cb!("$text"),
      ),
    );
  }
}

import "package:flutter/material.dart";

class ButtonGroup extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  ButtonGroup({Key? key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}

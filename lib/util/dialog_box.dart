import "package:flutter/material.dart";
import 'package:todo_app/util/button_group.dart';

class ShowDialog extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  ShowDialog(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task.")),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonGroup(
                  text: "Save",
                  onPressed: onSave,
                ),
                SizedBox(
                  width: 8.0,
                ),
                ButtonGroup(
                  text: "Close",
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

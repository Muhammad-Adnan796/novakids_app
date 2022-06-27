
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    required this.title,
    required this.backgroundcolor,
  });
  final void Function() onPressed;
  final Widget title;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: title,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundcolor)),
    );
  }
}
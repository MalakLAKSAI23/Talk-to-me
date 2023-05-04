import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyIconButton extends StatelessWidget {
  final Function() onPressed;
  final Color color;
  final Color shadowColor;
  final Icon icon;
  bool isPrimary = false;
  MyIconButton({
    super.key,
    required this.isPrimary,
    required this.onPressed,
    required this.color,
    required this.icon,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return isPrimary
        ? Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(1, 1),
                  blurRadius: 1,
                  color: shadowColor,
                  spreadRadius: 8,
                ),
              ],
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: icon,
              iconSize: 30,
              color: Colors.white,
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(1, 1),
                  blurRadius: 1,
                  color: shadowColor,
                  spreadRadius: 8,
                ),
              ],
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: icon,
              iconSize: 30,
              color: Colors.white,
            ),
          );
  }
}

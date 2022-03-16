// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function() onPressed;

  const RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      onPressed: onPressed,
      child: Icon(icon),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(56, 56),
        primary: Color(0xFF4C4F5E),
        shape: CircleBorder(),
        elevation: 6.0,
      ),
    );
  }
}
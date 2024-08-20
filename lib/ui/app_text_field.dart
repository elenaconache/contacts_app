import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextInputAction action;

  const AppTextField({
    super.key,
    required this.hint,
    this.action = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hint),
      textInputAction: action,
    );
  }
}

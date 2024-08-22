import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextInputAction action;
  final Function(String value)? onChanged;

  const AppTextField({
    super.key,
    required this.hint,
    this.action = TextInputAction.next,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hint),
      textInputAction: action,
      onChanged: onChanged,
    );
  }
}

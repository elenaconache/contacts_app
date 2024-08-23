import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextInputAction action;
  final Function(String value)? onChanged;
  final String? initialValue;

  const AppTextField({
    super.key,
    required this.hint,
    this.action = TextInputAction.next,
    this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black26),
        label: Text(hint),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        border: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
      ),
      textInputAction: action,
      onChanged: onChanged,
      initialValue: initialValue,
    );
  }
}

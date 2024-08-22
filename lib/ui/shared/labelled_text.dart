import 'package:flutter/material.dart';

class LabelledText extends StatelessWidget {
  final String label;
  final String value;

  const LabelledText({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.blueAccent),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}

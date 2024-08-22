import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';

class EditContactView extends StatelessWidget {
  const EditContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(editContactTitle),
      ),
    );
  }
}

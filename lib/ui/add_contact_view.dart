import 'package:contacts_app/ui/strings.dart';
import 'package:flutter/material.dart';

class AddContactView extends StatelessWidget {
  const AddContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createContactTitle),
      ),
    );
  }
}

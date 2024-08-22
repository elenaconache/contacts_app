import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/ui/shared/labelled_text.dart';
import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  final Contact contact;

  const ContactDetailsView({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(editLabel),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          Text(
            contact.fullName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 24),
          const Divider(thickness: 0.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: LabelledText(label: phoneLabel, value: contact.phoneNumber),
          ),
          const Divider(thickness: 0.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: LabelledText(label: addressLabel, value: contact.address),
          ),
          const Divider(thickness: 0.5),
          const SizedBox(height: 24),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                deleteContactLabel,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

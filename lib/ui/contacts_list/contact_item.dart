import 'package:contacts_app/model/contact.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  final VoidCallback onTap;

  const ContactItem({super.key, required this.contact, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 0.2,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(contact.fullName),
        ),
      ),
    );
  }
}

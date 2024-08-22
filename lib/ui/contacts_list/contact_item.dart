import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
      onTap: () => _onContactTapped(context),
    );
  }

  void _onContactTapped(BuildContext context) => context.pushNamed(Routes.contactDetails.name, extra: contact);
}

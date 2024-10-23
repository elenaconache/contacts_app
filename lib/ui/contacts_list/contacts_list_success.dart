import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/ui/contacts_list/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactsListSuccess extends StatelessWidget {
  final List<Contact> contacts;

  const ContactsListSuccess({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return ContactItem(
          contact: contact,
          onTap: () => _onContactTapped(context, contact),
        );
      },
      itemCount: contacts.length,
    );
  }

  void _onContactTapped(BuildContext context, Contact contact) => context.pushNamed(Routes.contactDetails.name, extra: contact);
}

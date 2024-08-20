import 'package:contacts_app/bloc/contacts_list_bloc.dart';
import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/ui/contacts_list/contact_item.dart';
import 'package:contacts_app/ui/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ContactsListView extends StatelessWidget {
  const ContactsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(contactsTitle),
        actions: [
          IconButton(
            onPressed: () => _onAddPressed(context),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: BlocBuilder<ContactsListBloc, ContactsListState>(
        builder: (context, state) => state.when(
          (contacts) => ListView.builder(
            itemBuilder: (context, index) => ContactItem(contact: contacts[index]),
            itemCount: contacts.length,
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          fetchError: () => const Center(child: Text(errorMessage)),
        ),
      ),
    );
  }

  void _onAddPressed(BuildContext context) => context.goNamed(Routes.addContact.name);
}

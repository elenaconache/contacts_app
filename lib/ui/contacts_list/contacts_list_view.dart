import 'package:contacts_app/bloc/contacts_list/contacts_list_bloc.dart';
import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:contacts_app/ui/contacts_list/contact_item.dart';
import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ContactsListView extends StatelessWidget {
  const ContactsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactsListBloc>(
      create: (context) => ContactsListBloc(
        contactsRepository: context.read<ContactsRepository>(),
        logService: getIt<LogService>(),
      )..add(const ContactsListEvent.subscriptionRequested()),
      child: Scaffold(
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
            fetched: (contacts) => ListView.builder(
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return ContactItem(
                  contact: contact,
                  onTap: () => _onContactTapped(context, contact),
                );
              },
              itemCount: contacts.length,
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            fetchError: () => const Center(child: Text(errorMessage)),
          ),
        ),
      ),
    );
  }

  void _onAddPressed(BuildContext context) => context.pushNamed(Routes.addContact.name);

  void _onContactTapped(BuildContext context, Contact contact) =>
      context.pushNamed(Routes.contactDetails.name, extra: contact);
}

import 'package:contacts_app/blocs/contacts_list_bloc.dart';
import 'package:contacts_app/ui/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListView extends StatelessWidget {
  const ContactsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(contactsTitle),
        actions: [IconButton(onPressed: _onAddPressed, icon: const Icon(Icons.add))],
      ),
      body: BlocProvider<ContactsListBloc>(
        create: (context) => ContactsListBloc(),
        child: BlocBuilder<ContactsListBloc, ContactsListState>(
          builder: (context, state) {
            return const Placeholder();
          },
        ),
      ),
    );
  }

  void _onAddPressed() {}
}

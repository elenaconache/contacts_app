import 'package:contacts_app/bloc/contacts_list/contacts_list_bloc.dart';
import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/ui/add_contact_view.dart';
import 'package:contacts_app/ui/contact_details_view.dart';
import 'package:contacts_app/ui/contacts_list/contacts_list_view.dart';
import 'package:contacts_app/ui/edit_contact_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.contacts.path,
      name: Routes.contacts.name,
      builder: (_, __) => BlocProvider<ContactsListBloc>(
        create: (context) => ContactsListBloc(
          contactsRepository: context.read<ContactsRepository>(),
        )..add(const ContactsListEvent.contactsListRequested()),
        child: const ContactsListView(),
      ),
      routes: [
        GoRoute(
          path: Routes.contactDetails.path,
          name: Routes.contactDetails.name,
          builder: (_, state) => ContactDetailsView(contact: state.extra as Contact),
          routes: [
            GoRoute(
              path: Routes.editContact.path,
              name: Routes.editContact.name,
              builder: (_, __) => const EditContactView(),
            ),
          ],
        ),
        GoRoute(
          path: Routes.addContact.path,
          name: Routes.addContact.name,
          builder: (_, __) => const AddContactView(),
        )
      ],
    )
  ],
  initialLocation: Routes.contacts.path,
);

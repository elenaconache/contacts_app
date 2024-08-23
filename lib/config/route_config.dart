import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/ui/add_contact_view.dart';
import 'package:contacts_app/ui/contact_details_view.dart';
import 'package:contacts_app/ui/contacts_list/contacts_list_view.dart';
import 'package:contacts_app/ui/edit_contact_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.contacts.path,
      name: Routes.contacts.name,
      builder: (_, __) => const ContactsListView(),
      routes: [
        GoRoute(
          path: Routes.contactDetails.path,
          name: Routes.contactDetails.name,
          builder: (_, state) => ContactDetailsView(contact: state.extra as Contact),
          routes: [
            GoRoute(
              path: Routes.editContact.path,
              name: Routes.editContact.name,
              builder: (_, state) => EditContactView(contact: state.extra as Contact),
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

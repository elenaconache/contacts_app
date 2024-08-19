import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/ui/contacts_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.contacts.path,
      builder: (_, __) => const ContactsListView(),
      routes: [
        GoRoute(
          path: Routes.contactDetails.path,
          builder: (_, __) => const Placeholder(),
          routes: [
            GoRoute(
              path: Routes.editContact.path,
              builder: (_, __) => const Placeholder(),
            ),
          ],
        ),
        GoRoute(
          path: Routes.addContact.path,
          builder: (_, __) => const Placeholder(),
        )
      ],
    )
  ],
  initialLocation: Routes.contacts.path,
);
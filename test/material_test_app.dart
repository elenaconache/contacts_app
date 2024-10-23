import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'step/the_app_is_running.mocks.dart';

class MaterialTestApp extends StatelessWidget {
  final Widget child;

  const MaterialTestApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<ContactsRepository>(
      create: (_) => MockContactsRepository(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: child,
      ),
    );
  }
}

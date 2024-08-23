import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/config/route_config.dart';
import 'package:contacts_app/datasource/assets_helper.dart';
import 'package:contacts_app/datasource/database_helper.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  final contactsRepository = ContactsRepository(
    assetsHelper: getIt<AssetsHelper>(),
    databaseHelper: getIt<DatabaseHelper>(),
    logService: getIt<LogService>(),
  );
  runApp(ContactsApp(contactsRepository: contactsRepository));
}

class ContactsApp extends StatelessWidget {
  final ContactsRepository contactsRepository;

  const ContactsApp({super.key, required this.contactsRepository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => contactsRepository,
      child: MaterialApp.router(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

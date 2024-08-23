import 'package:contacts_app/bloc/add_contact/add_contact_bloc.dart';
import 'package:contacts_app/bloc/contact_form/contact_form_bloc.dart';
import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/model/json_contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/form_items_helper.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:contacts_app/ui/shared/contact_form.dart';
import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AddContactView extends StatelessWidget {
  const AddContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ContactFormBloc(formHelper: getIt<FormItemsHelper>(), formItems: _initialFormItems),
        ),
        BlocProvider(
          create: (_) => AddContactBloc(
            contactsRepository: context.read<ContactsRepository>(),
            logService: getIt<LogService>(),
            formHelper: getIt<FormItemsHelper>(),
          ),
        ),
      ],
      child: BlocListener<AddContactBloc, AddContactState>(
        listener: (context, state) {
          state.when(
            pending: () {},
            confirmed: (contact) => _onContactAdded(context, contact),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(createContactTitle),
            actions: [
              BlocBuilder<ContactFormBloc, ContactFormState>(
                builder: (context, state) => TextButton(
                  onPressed: state.isValid
                      ? () => context.read<AddContactBloc>().addContact(formItems: state.formItems)
                      : null,
                  child: const Text(doneLabel),
                ),
              ),
            ],
          ),
          body: const ContactForm(),
        ),
      ),
    );
  }

  List<FormItemData> get _initialFormItems => [
        FormItemData(
          key: firstNameKey,
          hint: firstNameHint,
          isMandatory: true,
        ),
        FormItemData(
          key: lastNameKey,
          hint: lastNameHint,
          isMandatory: true,
        ),
        FormItemData(
          key: phoneKey,
          hint: phoneHint,
          isMandatory: true,
        ),
        FormItemData(key: streetAddress1Key, hint: streetAddress1Hint),
        FormItemData(key: streetAddress2Key, hint: streetAddress2Hint),
        FormItemData(key: cityKey, hint: cityHint),
        FormItemData(key: stateKey, hint: stateHint),
        FormItemData(key: zipCodeKey, hint: zipCodeHint),
      ];

  void _onContactAdded(BuildContext context, JsonContact contact) => context.pop(contact);
}

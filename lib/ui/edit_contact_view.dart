import 'package:contacts_app/bloc/contact_form/contact_form_bloc.dart';
import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
import 'package:contacts_app/bloc/edit_contact/edit_contact_bloc.dart';
import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/shared/form_items_helper.dart';
import 'package:contacts_app/shared/log_service.dart';
import 'package:contacts_app/ui/shared/contact_form.dart';
import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EditContactView extends StatelessWidget {
  final Contact contact;

  const EditContactView({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactFormBloc>(
          create: (_) => ContactFormBloc(formHelper: getIt<FormItemsHelper>(), formItems: _initialFormItems),
        ),
        BlocProvider(
          create: (_) => EditContactBloc(
            contact: contact,
            contactsRepository: context.read<ContactsRepository>(),
            logService: getIt<LogService>(),
            formItemsHelper: getIt<FormItemsHelper>(),
          ),
        )
      ],
      child: BlocListener<EditContactBloc, EditContactState>(
        listener: (context, state) {
          state.when(
            (updatedContact) => context.pop(updatedContact),
            failed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text(errorMessage))),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(editContactTitle),
            actions: [
              BlocBuilder<ContactFormBloc, ContactFormState>(
                builder: (context, state) => TextButton(
                  onPressed: state.isValid ? () => _onSavePressed(context) : null,
                  child: const Text(saveLabel),
                ),
              )
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
          value: contact.firstName,
        ),
        FormItemData(
          key: lastNameKey,
          hint: lastNameHint,
          isMandatory: true,
          value: contact.lastName,
        ),
        FormItemData(
          key: phoneKey,
          hint: phoneHint,
          isMandatory: true,
          value: contact.phoneNumber,
        ),
        FormItemData(
          key: streetAddress1Key,
          hint: streetAddress1Hint,
          value: contact.streetAddress1,
        ),
        FormItemData(
          key: streetAddress2Key,
          hint: streetAddress2Hint,
          value: contact.streetAddress2,
        ),
        FormItemData(
          key: cityKey,
          hint: cityHint,
          value: contact.city,
        ),
        FormItemData(
          key: stateKey,
          hint: stateHint,
          value: contact.state,
        ),
        FormItemData(
          key: zipCodeKey,
          hint: zipCodeHint,
          value: contact.zipCode,
        ),
      ];

  void _onSavePressed(BuildContext context) {
    final editBloc = context.read<EditContactBloc>();
    final formBloc = context.read<ContactFormBloc>();

    editBloc.requestContactUpdate(formItems: formBloc.state.formItems);
  }
}

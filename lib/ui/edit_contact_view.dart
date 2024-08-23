import 'package:contacts_app/bloc/contact_form/contact_form_bloc.dart';
import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/bloc/contact_form/keys.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/ui/shared/contact_form.dart';
import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditContactView extends StatelessWidget {
  final Contact contact;

  const EditContactView({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactFormBloc>(
      create: (_) => ContactFormBloc(formItems: _initialFormItems),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(editContactTitle),
          actions: [
            BlocBuilder<ContactFormBloc, ContactFormState>(
              builder: (context, state) => TextButton(
                onPressed: state.isValid ? () {} : null,
                child: const Text(saveLabel),
              ),
            )
          ],
        ),
        body: const ContactForm(),
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
}

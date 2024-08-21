import 'dart:math';

import 'package:contacts_app/bloc/contact_form/contact_form_bloc.dart';
import 'package:contacts_app/bloc/contact_form/form_item_data.dart';
import 'package:contacts_app/ui/contact_form.dart';
import 'package:contacts_app/ui/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddContactView extends StatelessWidget {
  const AddContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContactFormBloc(formItems: _initialFormItems),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(createContactTitle),
          actions: [
            BlocBuilder<ContactFormBloc, ContactFormState>(
              builder: (_, state) {
                return TextButton(
                  onPressed: state.isValid ? () {} : null,
                  child: const Text(doneLabel),
                );
              },
            ),
          ],
        ),
        body: const ContactForm(),
      ),
    );
  }

  List<FormItemData> get _initialFormItems => [
        FormItemData(
          key: Random().nextDouble().toString(),
          hint: firstNameHint,
          isMandatory: true,
        ),
        FormItemData(
          key: Random().nextDouble().toString(),
          hint: lastNameHint,
          isMandatory: true,
        ),
        FormItemData(
          key: Random().nextDouble().toString(),
          hint: phoneHint,
          isMandatory: true,
        ),
        FormItemData(key: Random().nextDouble().toString(), hint: streetAddress1Hint),
        FormItemData(key: Random().nextDouble().toString(), hint: streetAddress2Hint),
        FormItemData(key: Random().nextDouble().toString(), hint: cityHint),
        FormItemData(key: Random().nextDouble().toString(), hint: stateHint),
        FormItemData(key: Random().nextDouble().toString(), hint: zipCodeHint),
      ];
}

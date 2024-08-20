import 'package:contacts_app/ui/app_text_field.dart';
import 'package:contacts_app/ui/strings.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        children: const [
          AppTextField(hint: firstNameHint),
          SizedBox(height: 8),
          AppTextField(hint: lastNameHint),
          SizedBox(height: 8),
          AppTextField(hint: phoneHint),
          SizedBox(height: 8),
          AppTextField(hint: streetAddress1Hint),
          SizedBox(height: 8),
          AppTextField(hint: streetAddress2Hint),
          SizedBox(height: 8),
          AppTextField(hint: cityHint),
          SizedBox(height: 8),
          AppTextField(hint: stateHint),
          SizedBox(height: 8),
          AppTextField(
            hint: zipCodeHint,
            action: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}

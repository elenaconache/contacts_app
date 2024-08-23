import 'package:contacts_app/bloc/contact_form/contact_form_bloc.dart';
import 'package:contacts_app/ui/shared/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactFormBloc, ContactFormState>(
      builder: (context, state) {
        final formItems = state.formItems;
        return Form(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: formItems.length,
            itemBuilder: (context, index) {
              final item = formItems[index];
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: AppTextField(
                  hint: '${item.hint}${item.isMandatory ? '*' : ''}',
                  action: index == formItems.length - 1 ? TextInputAction.done : TextInputAction.next,
                  onChanged: (value) => context.read<ContactFormBloc>().updateField(key: item.key, value: value),
                  initialValue: item.value,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

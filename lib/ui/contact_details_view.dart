import 'package:contacts_app/bloc/contact_bloc/contact_bloc.dart';
import 'package:contacts_app/config/routes.dart';
import 'package:contacts_app/model/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/ui/shared/labelled_text.dart';
import 'package:contacts_app/ui/shared/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ContactDetailsView extends StatelessWidget {
  final Contact contact;

  const ContactDetailsView({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(
        contactsRepository: context.read<ContactsRepository>(),
        contact: contact,
      ),
      child: BlocBuilder<ContactBloc, ContactState>(
        buildWhen: (_, current) => current.maybeWhen(
          deleted: () => false,
          orElse: () => true,
        ),
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            actions: state.maybeWhen(
              orElse: () => [],
              fetched: (_) => [
                TextButton(
                  onPressed: () => _onEditPressed(context),
                  child: const Text(editLabel),
                )
              ],
            ),
          ),
          body: state.maybeWhen(
            fetched: (contact) => ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                Text(
                  contact.fullName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 24),
                const Divider(thickness: 0.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: LabelledText(label: phoneLabel, value: contact.phoneNumber),
                ),
                const Divider(thickness: 0.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: LabelledText(label: addressLabel, value: contact.address.isEmpty ? '-' : contact.address),
                ),
                const Divider(thickness: 0.5),
                const SizedBox(height: 24),
                Center(
                  child: BlocListener<ContactBloc, ContactState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        deleted: () => _onDeleted(context),
                      );
                    },
                    child: TextButton(
                      onPressed: context.read<ContactBloc>().requestDelete,
                      child: Text(
                        deleteContactLabel,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }

  void _onDeleted(BuildContext context) => context.pop(true);

  void _onEditPressed(BuildContext context) async {
    final contactBloc = context.read<ContactBloc>();
    final currentContact = contactBloc.state.map(fetched: (state) => state.contact, deleted: (_) => contact);
    final updated = await context.pushNamed(Routes.editContact.name, extra: currentContact);
    if (context.mounted && updated != null && updated is Contact) {
      contactBloc.requestUpdate(updatedContact: updated);
    }
  }
}

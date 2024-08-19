import 'package:contacts_app/config/injector.dart';
import 'package:contacts_app/models/contact.dart';
import 'package:contacts_app/repository/contacts_repository.dart';
import 'package:contacts_app/service/log_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_list_event.dart';

part 'contacts_list_state.dart';

part 'contacts_list_bloc.freezed.dart';

class ContactsListBloc extends Bloc<ContactsListEvent, ContactsListState> {
  ContactsListBloc() : super(const ContactsListState.loading()) {
    on<ContactsListEvent>((event, emit) async {
      await event.when(
        fetch: () async {
          await Future.delayed(const Duration(milliseconds: 600));
          await getIt<ContactsRepository>()
              .getContacts(path: 'assets/contacts.json')
              .then((contacts) => emit(ContactsListState.fetched(contacts)))
              .catchError((error, stackTrace) {
            getIt<LogService>().exception(error: error, stackTrace: stackTrace);
            emit(const ContactsListState.fetchError());
          });
        },
      );
    });
  }
}

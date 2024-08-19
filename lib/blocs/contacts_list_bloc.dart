import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_list_event.dart';

part 'contacts_list_state.dart';

part 'contacts_list_bloc.freezed.dart';

class ContactsListBloc extends Bloc<ContactsListEvent, ContactsListState> {
  ContactsListBloc() : super(const ContactsListState.initial()) {
    on<ContactsListEvent>((event, emit) {
      event.map(
        started: (value) {
          // TODO: emit loading state
          // TODO: fetch data
          // TODO: emit loaded or error state
        },
      );
    });
  }
}

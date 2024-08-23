import 'package:contacts_app/model/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_contact_event.dart';

part 'edit_contact_state.dart';

part 'edit_contact_bloc.freezed.dart';

class EditContactBloc extends Bloc<EditContactEvent, EditContactState> {
  EditContactBloc({required Contact contact}) : super(EditContactState(contact: contact)) {
    on<EditContactEvent>((event, emit) {
      event.maybeWhen(
        updateRequested: (contact) => _onContactUpdateRequested(emit, contact),
        orElse: () {},
      );
    });
  }

  void _onContactUpdateRequested(Emitter<EditContactState> emit, Contact contact) {}
}

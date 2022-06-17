import 'package:contacts/repository/contact_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:contacts/model/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<GetListContactEvent>(_onGetListEvent);
  }

  void _onGetListEvent(GetListContactEvent event, Emitter emit) async {
    emit(ContactLoading());
    final List<Contact> contacts = await ContactRepositoryImpl().getContacts();
    emit(ContactLoaded(contacts: contacts));
  }
}

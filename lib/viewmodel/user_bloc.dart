import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvmbloc/viewmodel/user_event.dart';
import 'package:mvvmbloc/viewmodel/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState()) {
    on<NamaChanged>((event, emit) {
      emit(state.copyWith(nama: event.nama));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
  }
}
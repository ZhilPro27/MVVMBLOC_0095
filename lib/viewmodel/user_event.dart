abstract class UserEvent {}

class NamaChanged extends UserEvent {
  final String nama;

  NamaChanged(this.nama);
}

class EmailChanged extends UserEvent {
  final String email;

  EmailChanged(this.email);
}
abstract class UserEvent {}

class NamaChanged extends UserEvent {
  final String nama;

  NamaChanged(this.nama);
}
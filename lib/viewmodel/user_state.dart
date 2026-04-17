class UserState {
  final String nama;
  final String email;

  UserState({
    this.nama = "", 
    this.email = ""
  });

  UserState copyWith({
    String? nama,
    String? email,
  }) {
    return UserState(
      nama: nama ?? this.nama,
      email: email ?? this.email,
    );
  }
}
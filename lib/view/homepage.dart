import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvmbloc/viewmodel/user_bloc.dart';
import 'package:mvvmbloc/viewmodel/user_event.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MVVM with BLoC Example")),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Nama"),
            onChanged: (value) {
              context.read<UserBloc>().add(NamaChanged(value));
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Email"),
            onChanged: (value) {
              context.read<UserBloc>().add(EmailChanged(value));
            },
          )
        ],
      ),
    );
  }
}
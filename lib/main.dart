import 'package:contacts/model_view/contact_bloc.dart';
import 'package:contacts/views/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: const MaterialApp(
        title: 'Contacts App',
        debugShowCheckedModeBanner: false,
        home: ContactPage(),
      ),
    );
  }
}

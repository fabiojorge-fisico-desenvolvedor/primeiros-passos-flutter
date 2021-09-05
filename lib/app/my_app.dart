import 'package:agenda_crud/app/view/contact_form.dart'; // se não tiver esses pacotes importados aqui de suas pastas, não vai dar certo.
import 'package:agenda_crud/app/view/contact_list.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ContactList(),
        'contact-form': (context) => ContactForm()
      },
    );
  }
}

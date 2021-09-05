import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de comandos'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('contact-form');
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView(),
    );
  }
}

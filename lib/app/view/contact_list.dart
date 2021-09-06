import 'package:agenda_crud/app/my_app.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': 'Pietro',
      'telefone': '(61)55555-5555',
      'avatar':
          'https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'
    },
    {
      'nome': 'Joao',
      'telefone': '(61) 55555-5555',
      'avatar':
          'https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'
    },
    {
      'nome': 'Pedro',
      'telefone': '(61) 55555-5555',
      'avatar':
          'https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de contatos'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, i) {
            var contato = lista[i];
            var avatar = CircleAvatar(
              backgroundImage: NetworkImage(contato['avatar']!),
            );
            return ListTile(
              leading: avatar,
              title: Text(contato['nome']!),
              subtitle: Text(contato['telefone']!),
            );
          },
        ));
  }
}

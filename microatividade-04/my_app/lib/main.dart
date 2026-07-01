import 'package:flutter/material.dart';

void main() {
  return runApp(const MaterialApp(home: ListaExemplo()));
}

class ListaExemplo extends StatelessWidget {
  const ListaExemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Microatividade 04 - Lista Exemplo'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.flash_on),
            title: Text('Flutter'),
            subtitle: Text('Tudo é um widget'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.mood),
            title: Text('Dart'),
            subtitle: Text('É fácil'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.whatshot),
            title: Text('Firebase'),
            subtitle: Text('Combina com Flutter'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}

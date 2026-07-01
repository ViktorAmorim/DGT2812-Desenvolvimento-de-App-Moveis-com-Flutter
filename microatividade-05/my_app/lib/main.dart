import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: StackExemplo()));
}

class StackExemplo extends StatelessWidget {
  const StackExemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Microatividade 05 - Stack Exemplo'),
        ),
        // Adicionei o widget Center para centralizar o Stack na tela
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              )
            ],
          ),
        ));
  }
}

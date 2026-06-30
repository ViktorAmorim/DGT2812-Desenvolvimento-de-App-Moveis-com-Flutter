import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: LayoutBasico(),
    ),
  );
}

class LayoutBasico extends StatelessWidget {
  const LayoutBasico({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Microatividade 03 - Layout Básico'),
      ),
      body: const Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.call),
            Text('Call'),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.directions),
            Text('Route'),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.share),
            Text('Share'),
          ]),
        ]),
      ),
    );
  }
}

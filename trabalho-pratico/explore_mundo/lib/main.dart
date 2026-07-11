import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Mundo'),
        ),
        body: ListView(
          children: [
            _buildImageSection(),
            _buildTitleSection(),
            _buildButtonSection(context),
            _buildTextSection(),
          ],
        ),
      ),
    );
  }
}

Widget _buildImageSection() {
  return Image.asset(
    'images/lake.png',
    width: double.infinity,
    height: 240,
    fit: BoxFit.cover,
  );
}

Widget _buildTitleSection() {
  return const Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          SizedBox(width: 4),
          Text('41'),
        ],
      ));
}

Widget _buildButtonSection(BuildContext context) {
  Color color = Theme.of(context).primaryColor;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(Icons.call, 'CALL', color),
        _buildButton(Icons.near_me, 'ROUTE', color),
        _buildButton(Icons.share, 'SHARE', color),
      ],
    ),
  );
}

Widget _buildButton(IconData icon, String label, Color color) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: color),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
        ),
      ),
    ],
  );
}

Widget _buildTextSection() {
  return const Padding(
    padding: EdgeInsets.all(24),
    child: Text(
      'O Lago Oeschinen fica aos pés do Blüemlisalp nos Alpes Berneses. Situado a 1.578 metros acima do nível do mar, é um dos lagos alpinos mais amplos. Um passeio de teleférico a partir de Kandersteg, seguido por meia hora de caminhada por pastagens e floresta de pinheiros, leva você ao lago, que aquece até 20 graus Celsius no verão. As atividades desfrutadas aqui incluem remo e andar no tobogã de verão.',
      textAlign: TextAlign.justify,
    ),
  );
}

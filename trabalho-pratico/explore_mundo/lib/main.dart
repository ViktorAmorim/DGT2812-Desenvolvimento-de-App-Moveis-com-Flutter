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
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            _buildImageSection(),
            _buildTitleSection(),
            _buildButtonSection(),
            _buildTextSection(),
          ],
        ),
      ),
    );
  }
}

Widget _buildImageSection() {
  return Image.network(
    'https://upload.wikimedia.org/wikipedia/commons/0/0d/Oeschinen_Lake%2C_Kandersteg%2C_Switzerland_%28Unsplash%29.jpg',
    width: double.infinity,
    height: 240,
    fit: BoxFit.cover,
  );
}

Widget _buildTitleSection() {
  return const Padding(
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Oeshchinen Lake Campground',
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

Widget _buildButtonSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(Icons.call, 'CALL'),
        _buildButton(Icons.near_me, 'ROUTE'),
        _buildButton(Icons.share, 'SHARE'),
      ],
    ),
  );
}

Widget _buildButton(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: Colors.blue),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 12,
        ),
      ),
    ],
  );
}

Widget _buildTextSection() {
  return const SizedBox();
}

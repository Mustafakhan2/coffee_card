import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          width: 100,
          color: Colors.green,
          child: const Text('box 1'),
        ),
        Container(
          width: 200,
          color: Colors.blue,
          child: const Text('box 1'),
        ),
        Container(
          width: 300,
          color: Colors.red,
          child: const Text('box 1'),
        ),
      ]),
    );
  }
}

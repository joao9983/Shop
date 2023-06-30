import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Página Inicial'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0, horizontal: width * 0.09),
          child: const Text(
            'Olá, bem-vindo à minha página inicial!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}

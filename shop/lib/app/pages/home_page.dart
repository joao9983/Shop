import 'package:flutter/material.dart';
import 'package:shop/app/shared/location_widget.dart';
import 'package:shop/app/shared/profile_widget.dart';

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
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LocationWidget(),
            TextButton(
              onPressed: () {
                // getLocation();
              },
              child: const Text("aqui"),
            ),
            // ignore: prefer_const_constructors
            ProfileWidget(),
          ],
        ),
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

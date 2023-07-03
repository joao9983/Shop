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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LocationWidget(),
            ProfileWidget(),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    width * 0.055, height * 0.01, width * 0, height * 0.02),
                child: Text(
                  "Bom dia, amigo!",
                  style: TextStyle(
                      fontSize: height * 0.026, color: Colors.grey[600]),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(width * 0.055, height * 0.01, 0, 0),
                child: Text(
                  "Vamos pedir itens frescos",
                  style:
                      TextStyle(fontSize: height * 0.04, color: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(width * 0.055, height * 0.01, 0, 0),
                child: Text(
                  "para você!",
                  style:
                      TextStyle(fontSize: height * 0.04, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

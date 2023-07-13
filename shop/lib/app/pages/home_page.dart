import 'package:flutter/material.dart';

import 'package:shop/app/widgets/location_widget.dart';
import 'package:shop/app/widgets/profile_widget.dart';
import 'package:shop/app/widgets/time_widget.dart';

import '../widgets/categories_widget.dart';

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
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LocationWidget(),
            ProfileWidget(),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.055, height * 0.01, width * 0, height * 0.02),
              child: Row(
                children: [
                  const TimeWidget(),
                  Text(
                    " Amigo!",
                    style: TextStyle(
                        fontSize: height * 0.022, color: Colors.grey[600]),
                  ),
                ],
              ),
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
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.055, height * 0.07, width * 0, height * 0),
              child: Row(
                children: [
                  Text(
                    "Categorias",
                    style: TextStyle(fontSize: height * 0.025),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 0.055, height * 0.07, width * 0.055, height * 0),
              child: const CategoriesWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

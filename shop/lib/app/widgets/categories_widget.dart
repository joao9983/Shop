import 'package:flutter/material.dart';

import '../dados_test.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 1,
      height: height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorias.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.01),
              child: GestureDetector(
                onTap: () {
                  //       Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => categorias.isNotEmpty
                  //                       ? categorias[index].rota : "" ),
                  // );
                },
                child: Container(
                  width: width * 0.33,
                  decoration: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.02),
                        child: Container(
                          width: width,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(categorias.isNotEmpty
                                  ? categorias[index].img
                                  : ""),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.05)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(categorias.isNotEmpty
                                ? categorias[index].nome
                                : ""),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0,
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}

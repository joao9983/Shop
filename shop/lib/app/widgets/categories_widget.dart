import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 0.2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: width * 0.33,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 236, 189),
                borderRadius: BorderRadius.circular(width * 0.03)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Container(
                    width: width,
                    height: height * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/03/30/15/56/carrot-4984620_1280.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            width: width * 0.33,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 236, 189),
                borderRadius: BorderRadius.circular(width * 0.03)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Container(
                    width: width,
                    height: height * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/03/30/15/56/carrot-4984620_1280.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            width: width * 0.33,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 236, 189),
                borderRadius: BorderRadius.circular(width * 0.03)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Container(
                    width: width,
                    height: height * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/03/30/15/56/carrot-4984620_1280.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            width: width * 0.33,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 236, 189),
                borderRadius: BorderRadius.circular(width * 0.03)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Container(
                    width: width,
                    height: height * 0.1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/03/30/15/56/carrot-4984620_1280.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                width * 0.085, height * 0.042, width * 0, height * 0),
            child: Text(
              'Meus Pedidos',
              style: TextStyle(
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          //widget à ser repetido de acordo com a lista
          Padding(
            padding: EdgeInsets.fromLTRB(
                width * 0.1, height * 0.1, width * 0.1, height * 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.75,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(width * 1),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.05, height * 0, width * 0, height * 0),
                        child: Text(
                          "20/02/2022",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.04, height * 0, width * 0, height * 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "R\$ 25,00",
                              style: TextStyle(
                                  fontSize: height * 0.025,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const Text("5 itens")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.12, height * 0, width * 0, height * 0),
                        child: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                width * 0.1, height * 0.1, width * 0.1, height * 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.75,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(width * 1),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.05, height * 0, width * 0, height * 0),
                        child: Text(
                          "20/02/2022",
                          style: TextStyle(
                              fontSize: height * 0.025,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.04, height * 0, width * 0, height * 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "R\$ 25,00",
                              style: TextStyle(
                                  fontSize: height * 0.025,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const Text("5 itens")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            width * 0.12, height * 0, width * 0, height * 0),
                        child: const Icon(
                          Icons.navigate_next_outlined,
                        ),
                      ),
                    ],
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

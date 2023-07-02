import 'package:flutter/material.dart';
import 'package:shop/app/pages/home_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://static.vecteezy.com/ti/vetor-gratis/p3/12740872-mao-segura-cesta-de-compras-cheia-de-produtos-frescos-comprar-mantimentos-no-supermercado-vetor.jpg', // URL da imagem
                  width: width * 0.6, // Largura da imagem
                  height: height * 0.5, // Altura da imagem
                  fit: BoxFit.cover, // Modo de ajuste da imagem
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Text(
                    "Nós entregamos ",
                    style: TextStyle(
                      fontSize: height * 0.05,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Center(
                    child: Text(
                      "suas compras na porta da sua",
                      style: TextStyle(
                        fontSize: height * 0.035,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text(
                  " casa",
                  style: TextStyle(
                    fontSize: height * 0.05,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Text(
                    "Shop oferece frutas e legumes frescos. ",
                    style: TextStyle(
                        fontSize: height * 0.022, color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Center(
                    child: Text(
                      "Encomende itens frescos da Shop.",
                      style: TextStyle(
                          fontSize: height * 0.022, color: Colors.grey[600]),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.065),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        // ignore: prefer_const_constructors
                        builder: (context) => HomePage(),
                      ));
                }, //função para chamar a HomePage
                style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  fixedSize: Size(width * 0.4, height * 0.07),
                  backgroundColor: Colors.indigo[400],
                ),
                child: Text(
                  'Iniciar',
                  style: TextStyle(fontSize: height * 0.028),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

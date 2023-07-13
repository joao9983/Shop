import 'package:flutter/material.dart';
import 'package:shop/app/pages/home_page.dart';
import 'package:shop/app/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Material(
          child: Container(
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0, height * 0.1, width * 0, height * 0.075),
                  child: Text(
                    "Faça o Log-In para acessar o Shop",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0, width * 0.05, height * 0.075),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.08),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            )),
                        labelText: 'Usuário',
                        hintText: 'abc@gmail.com'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0, width * 0.05, height * 0.06),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.08),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            )),
                        labelText: 'Senha',
                        hintText: 'Insira sua Senha'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    }, //função para chamar a HomePage
                    style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: const TextStyle(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(width * 0.08),
                      ),
                      fixedSize: Size(width * 0.88, height * 0.08),
                      backgroundColor: Colors.indigo[400],
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: height * 0.028),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Primeira vez? Clique aqui!",
                        style: TextStyle(
                            color: Colors.grey, fontSize: width * 0.04),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.08, vertical: height * 0.03),
                  child: Divider(
                    color: Colors.grey,
                    height: height * 0.03,
                    thickness: width * 0.004,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.03),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: height * 0.015, horizontal: width * 0.015),
                    ),
                    icon: Image.network(
                      'https://logopng.com.br/logos/google-37.png', // URL da imagem
                      width: width * 0.068, // Largura da imagem
                      height: height * 0.04, // Altura da imagem
                      fit: BoxFit.cover, // Modo de ajuste da imagem
                    ),
                    label: Text(
                      'Fazer login com o Google',
                      style: TextStyle(
                        fontSize: width * 0.037,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

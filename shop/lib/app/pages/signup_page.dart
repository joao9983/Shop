import 'package:flutter/material.dart';
import 'package:shop/app/pages/home_page.dart';
import 'package:shop/app/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    "Faça o Cadastro para acessar o Shop",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0, width * 0.05, height * 0.07),
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
                      width * 0.05, height * 0, width * 0.05, height * 0.07),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(width * 0.08),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            )),
                        labelText: 'Nome ',
                        hintText: 'Nome'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0, width * 0.05, height * 0.05),
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
                  padding: EdgeInsets.fromLTRB(
                      width * 0.05, height * 0.01, width * 0.05, height * 0.05),
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
                        labelText: 'Confirmar Senha',
                        hintText: 'Repita sua Senha'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
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
                      'Cadastrar',
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
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      child: Text(
                        "Já possuo cadastro!",
                        style: TextStyle(
                            color: Colors.grey, fontSize: width * 0.04),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

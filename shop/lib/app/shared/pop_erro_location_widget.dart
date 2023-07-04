import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class MeuPopupContent extends StatefulWidget {
  const MeuPopupContent({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MeuPopupContentState createState() => _MeuPopupContentState();
}

class _MeuPopupContentState extends State<MeuPopupContent> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.28,
      width: width * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.04),
            child: Column(
              children: [
                Text(
                  "Não foi possível acessar sua",
                  style:
                      TextStyle(color: Colors.black, fontSize: height * 0.028),
                ),
                Text(
                  "Localização!",
                  style:
                      TextStyle(color: Colors.black, fontSize: height * 0.035),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.02),
            child: Column(
              children: [
                Text(
                  "Vá em configurações e permita que",
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: height * 0.022),
                ),
                Text(
                  "o app acesse a localização do seu",
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: height * 0.022),
                ),
                Text(
                  "dispositivo.",
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: height * 0.022),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              elevation: 12.0,
              textStyle: const TextStyle(color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              fixedSize: Size(width * 0.2, height * 0.04),
              backgroundColor: Colors.indigo[400],
            ),
            child: Text(
              'Ok',
              style: TextStyle(fontSize: height * 0.028),
            ),
          ),
        ],
      ),
    );
  }
}

void exibirPopup(BuildContext context) {
  showPlatformDialog(
    context: context,
    builder: (_) => BasicDialogAlert(
      content: const MeuPopupContent(),
    ),
  );
}

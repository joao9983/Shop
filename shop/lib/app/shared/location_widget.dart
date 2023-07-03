// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  double? latitude;
  double? longitude;
  String? street;
  String? locality;

  @override
  void initState() {
    super.initState();
    // Chamada da função para inicialização automática
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.place,
          size: height * 0.03,
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            street != null
                ? Text(
                    '$street,',
                    style: TextStyle(
                        fontSize: height * 0.024, color: Colors.black),
                  )
                : Text(
                    "Erro ao pegar localização",
                    style:
                        TextStyle(fontSize: height * 0.022, color: Colors.red),
                  ),
            SizedBox(width: width * 0.004),
            locality != null
                ? Text(
                    ' $locality',
                    style: TextStyle(
                        fontSize: height * 0.023, color: Colors.black),
                  )
                : Container()
          ],
        ),
      ],
    );
  }

//deve ser chamada quando a home for acessada.
  getLocation() async {
    Position position = await Geolocator.getCurrentPosition();

    setState(() {
      latitude = position.latitude;
      longitude = position.longitude;
    });

    List<Placemark> local =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    if (local != null && local.isNotEmpty) {
      print(local[0]);
      street = local[0].street;
      locality = local[0].locality;
    }
  }
}

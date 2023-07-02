import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
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
        Text(
          "Rua, Bairro",
          style: TextStyle(fontSize: height * 0.025, color: Colors.black),
        ),
      ],
    );
  }
}

getLocation() async {
  Position postion = await Geolocator.getCurrentPosition();
  // ignore: avoid_print
  print(postion);
}

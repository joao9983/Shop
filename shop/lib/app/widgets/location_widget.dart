import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:shop/app/widgets/pop_erro_location_widget.dart';
import 'dart:async';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  final StreamController<String> _locationStreamController =
      StreamController<String>();

  Stream<String> get locationStream => _locationStreamController.stream;

  double? latitude;
  double? longitude;
  String? street;
  String? locality;

  @override
  void initState() {
    super.initState();
    updateLocation();
  }

  @override
  void dispose() {
    _locationStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
            StreamBuilder<String>(
              stream: locationStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    snapshot.data!,
                    style: TextStyle(
                        fontSize: height * 0.025, color: Colors.black),
                  );
                } else {
                  return Text(
                    "Erro ao pegar localização",
                    style:
                        TextStyle(fontSize: height * 0.022, color: Colors.red),
                  );
                }
              },
            ),
            SizedBox(width: width * 0.004),
            Container(),
          ],
        ),
      ],
    );
  }

  void updateLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();

      setState(() {
        latitude = position.latitude;
        longitude = position.longitude;
      });

      List<Placemark> local =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (local.isNotEmpty) {
        street = local[0].street;

        _locationStreamController.add('$street');
      }
    } catch (e) {
      exibirPopup(context);
    }
  }
}

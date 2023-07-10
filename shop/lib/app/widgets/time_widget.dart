import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key});

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  String currentTime = '';

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    newTime();
  }

  void newTime() {
    // var now = DateTime.now();

    DateTime now = DateTime.now();
    DateFormat hour = DateFormat('HH:mm');
    String newHour = hour.format(now);

    setState(() {
      currentTime = newHour;
    });

    Future.delayed(const Duration(seconds: 1), newTime);
  }

  String getGreeting() {
    int currentHour = int.parse(currentTime.split(':')[0]);

    if (currentHour >= 4 && currentHour < 12) {
      return 'Bom dia,';
    } else if (currentHour >= 12 && currentHour < 18) {
      return 'Boa tarde,';
    } else {
      return 'Boa noite,';
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    String greeting = getGreeting();
    return Text(
      greeting,
      style: TextStyle(fontSize: height * 0.022, color: Colors.grey[600]),
    );
  }
}

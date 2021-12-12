import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prayerapp/components/timer.dart';
import 'package:prayerapp/constants/constant.dart';

class Section1 extends StatefulWidget {
  Section1({
    required this.nextPrayerTime,
  });

  final String nextPrayerTime;

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> {
  Timer? timer;
  String time = '';

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) => {
        setState(
          () {
            time = Time().uptadeTime(widget.nextPrayerTime);
          },
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.access_time_rounded,
            size: MediaQuery.of(context).size.width / 2,
            color: accentColor,
          ),
          const Text(
            'Sıradaki namaz vaktine',
            style: TextStyle(
              color: accentColor,
              fontSize: 35,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              color: accentColor,
              fontSize: 35,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

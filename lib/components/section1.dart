import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

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
          const Text(
            '1 saat 10 dakika 20 saniye',
            style: TextStyle(
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

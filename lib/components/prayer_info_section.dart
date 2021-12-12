import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';

class PrayerInfoSection extends StatelessWidget {
  PrayerInfoSection({
    required this.prayerTimeName,
    required this.prayerTime,
  });

  String prayerTimeName = '';
  String prayerTime = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$prayerTimeName : ',
            style: const TextStyle(
              fontSize: 26,
              color: accentColor,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            prayerTime,
            style: const TextStyle(
              fontSize: 26,
              color: accentColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

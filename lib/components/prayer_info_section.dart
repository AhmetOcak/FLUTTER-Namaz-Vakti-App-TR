import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';

class PrayerInfoSection extends StatefulWidget {
  PrayerInfoSection({
    required this.prayerTimeName,
    required this.prayerTime,
    required this.isTheCurrent,
  });

  String prayerTimeName = '';
  String prayerTime = '';
  bool isTheCurrent = false;

  @override
  State<PrayerInfoSection> createState() => _PrayerInfoSectionState();
}

class _PrayerInfoSectionState extends State<PrayerInfoSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${widget.prayerTimeName} : ',
            style: TextStyle(
              fontSize: 26,
              color: accentColor,
              fontWeight: widget.isTheCurrent == true
                  ? FontWeight.w900
                  : FontWeight.w300,
            ),
          ),
          Text(
            widget.prayerTime,
            style: TextStyle(
              fontSize: 26,
              color: accentColor,
              fontWeight: widget.isTheCurrent == true
                  ? FontWeight.w900
                  : FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

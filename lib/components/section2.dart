import 'package:flutter/material.dart';
import 'package:prayerapp/components/my_divider.dart';
import 'package:prayerapp/components/prayer_info_section.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/views/home_screen.dart';

class Section2 extends StatefulWidget {
  String imsak;
  String imsakVakti;
  String gunes;
  String gunesVakti;
  String ogle;
  String ogleVakti;
  String ikindi;
  String ikindiVakti;
  String aksam;
  String aksamVakti;
  String yatsi;
  String yatsiVakti;
  String cityName;
  String currentPrayerTime;

  Section2({
    this.imsak = 'xx',
    this.imsakVakti = 'xx',
    this.gunes = 'xx',
    this.gunesVakti = 'xx',
    this.ogle = 'xx',
    this.ogleVakti = 'xx',
    this.ikindi = 'xx',
    this.ikindiVakti = 'xx',
    this.aksam = 'xx',
    this.aksamVakti = 'xx',
    this.yatsi = 'xx',
    this.yatsiVakti = 'xx',
    this.cityName = 'xx',
    required this.currentPrayerTime,
  });

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            widget.cityName,
            style: const TextStyle(
              fontSize: 45,
              color: accentColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        PrayerInfoSection(
          prayerTime: widget.imsakVakti,
          prayerTimeName: widget.imsak,
          isTheCurrent: widget.currentPrayerTime == widget.imsak,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: widget.gunesVakti,
          prayerTimeName: widget.gunes,
          isTheCurrent: widget.currentPrayerTime == widget.gunes,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: widget.ogleVakti,
          prayerTimeName: widget.ogle,
          isTheCurrent: widget.currentPrayerTime == widget.ogle,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: widget.ikindiVakti,
          prayerTimeName: widget.ikindi,
          isTheCurrent: widget.currentPrayerTime == widget.ikindi,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: widget.aksamVakti,
          prayerTimeName: widget.aksam,
          isTheCurrent: widget.currentPrayerTime == widget.aksam,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: widget.yatsiVakti,
          prayerTimeName: widget.yatsi,
          isTheCurrent: widget.currentPrayerTime == widget.yatsi,
        ),
      ],
    );
  }
}

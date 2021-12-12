import 'package:flutter/material.dart';
import 'package:prayerapp/components/my_divider.dart';
import 'package:prayerapp/components/prayer_info_section.dart';
import 'package:prayerapp/constants/constant.dart';

class Section2 extends StatelessWidget {
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
  String yatsikVakti;
  String cityName;

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
    this.yatsikVakti = 'xx',
    this.cityName = 'xx',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            cityName,
            style: const TextStyle(
              fontSize: 40,
              color: accentColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        PrayerInfoSection(
          prayerTime: imsakVakti,
          prayerTimeName: imsak,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: gunesVakti,
          prayerTimeName: gunes,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: ogleVakti,
          prayerTimeName: ogle,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: ikindiVakti,
          prayerTimeName: ikindi,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: aksamVakti,
          prayerTimeName: aksam,
        ),
        const MyDivider(),
        PrayerInfoSection(
          prayerTime: yatsikVakti,
          prayerTimeName: yatsi,
        ),
      ],
    );
  }
}

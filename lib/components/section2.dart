import 'package:flutter/material.dart';
import 'package:prayerapp/components/my_divider.dart';
import 'package:prayerapp/components/prayer_info_section.dart';

class Section2 extends StatelessWidget {
  const Section2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrayerInfoSection(prayerTime: '04:30', prayerTimeName: 'İmsak',),
        const MyDivider(),
        PrayerInfoSection(prayerTime: '04:30', prayerTimeName: 'Güneş',),
        const MyDivider(),
        PrayerInfoSection(prayerTime: '04:30', prayerTimeName: 'Öğle',),
        const MyDivider(),
        PrayerInfoSection(prayerTime: '04:30', prayerTimeName: 'İkindi',),
        const MyDivider(),
        PrayerInfoSection(prayerTime: '04:30', prayerTimeName: 'Akşam',),
        const MyDivider(),
        PrayerInfoSection(prayerTime: '04:30', prayerTimeName: 'Yatsı',),
      ],
    );
  }
}


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prayerapp/components/section1.dart';
import 'package:prayerapp/components/section2.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/model/model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({required this.prayerTimeModel, required this.cityName});

  final PrayerTimeModel prayerTimeModel;
  final String cityName;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentPrayerTime = '';
  Timer? timer;

  String findTargetPrayerTime() {
    String currentTime = uptadeCurrentTime();

    if (currentTime == widget.prayerTimeModel.imsak) {
      return widget.prayerTimeModel.gunesVakti!;
    } else if (currentTime == widget.prayerTimeModel.gunes) {
      return widget.prayerTimeModel.ogleVakti!;
    } else if (currentTime == widget.prayerTimeModel.ogle) {
      return widget.prayerTimeModel.ikindiVakti!;
    } else if (currentTime == widget.prayerTimeModel.ikindi) {
      return widget.prayerTimeModel.aksamVakti!;
    } else if (currentTime == widget.prayerTimeModel.aksam) {
      return widget.prayerTimeModel.yatsiVakti!;
    } else {
      return widget.prayerTimeModel.imsakVakti!;
    }
  }

  String uptadeCurrentTime() {
    int currentHour = DateTime.now().hour;

    if (currentHour >=
            int.parse(widget.prayerTimeModel.imsakVakti!.substring(0, 2)) &&
        currentHour <=
            int.parse(widget.prayerTimeModel.gunesVakti!.substring(0, 2))) {
      return currentPrayerTime = widget.prayerTimeModel.imsak!;
    } else if (currentHour >=
            int.parse(widget.prayerTimeModel.gunesVakti!.substring(0, 2)) &&
        currentHour <=
            int.parse(widget.prayerTimeModel.ogleVakti!.substring(0, 2))) {
      return currentPrayerTime = widget.prayerTimeModel.gunes!;
    } else if (currentHour >=
            int.parse(widget.prayerTimeModel.ogleVakti!.substring(0, 2)) &&
        currentHour <=
            int.parse(widget.prayerTimeModel.ikindiVakti!.substring(0, 2))) {
      return currentPrayerTime = widget.prayerTimeModel.ogle!;
    } else if (currentHour >=
            int.parse(widget.prayerTimeModel.ikindiVakti!.substring(0, 2)) &&
        currentHour <=
            int.parse(widget.prayerTimeModel.aksamVakti!.substring(0, 2))) {
      return currentPrayerTime = widget.prayerTimeModel.ikindi!;
    } else if (currentHour >=
            int.parse(widget.prayerTimeModel.aksamVakti!.substring(0, 2)) &&
        currentHour <=
            int.parse(widget.prayerTimeModel.yatsiVakti!.substring(0, 2))) {
      return currentPrayerTime = widget.prayerTimeModel.aksam!;
    } else {
      return currentPrayerTime = widget.prayerTimeModel.yatsi!;
    }
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentPrayerTime = uptadeCurrentTime();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1000,
            ),
            Section1(
              nextPrayerTime: findTargetPrayerTime(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Section2(
              imsak: widget.prayerTimeModel.imsak!,
              imsakVakti: widget.prayerTimeModel.imsakVakti!,
              gunes: widget.prayerTimeModel.gunes!,
              gunesVakti: widget.prayerTimeModel.gunesVakti!,
              ogle: widget.prayerTimeModel.ogle!,
              ogleVakti: widget.prayerTimeModel.ogleVakti!,
              ikindi: widget.prayerTimeModel.ikindi!,
              ikindiVakti: widget.prayerTimeModel.ikindiVakti!,
              aksam: widget.prayerTimeModel.aksam!,
              aksamVakti: widget.prayerTimeModel.aksamVakti!,
              yatsi: widget.prayerTimeModel.yatsi!,
              yatsiVakti: widget.prayerTimeModel.yatsiVakti!,
              cityName: widget.cityName,
              currentPrayerTime: currentPrayerTime,
            ),
          ],
        ),
      ),
    );
  }
}

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
            const Section1(),
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
              yatsikVakti: widget.prayerTimeModel.yatsiVakti!,
              cityName: widget.cityName,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prayerapp/components/section1.dart';
import 'package:prayerapp/components/section2.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/services/get_data.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height / 8,
            ),
            const Section2(),
          ],
        ),
      ),
    );
  }
}

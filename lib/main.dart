import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prayerapp/model/model.dart';
import 'package:prayerapp/views/home_screen.dart';
import 'package:prayerapp/views/loading_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/home': (context) => HomeScreen(
              prayerTimeModel: PrayerTimeModel(),
              cityName: '',
            ),
      },
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
}

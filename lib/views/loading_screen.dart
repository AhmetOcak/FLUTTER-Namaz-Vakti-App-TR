import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:prayerapp/components/error_dialog.dart';
import 'package:prayerapp/constants/constant.dart';
import 'package:prayerapp/model/model.dart';
import 'package:prayerapp/services/get_data.dart';
import 'package:prayerapp/services/location.dart';
import 'package:prayerapp/views/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  PrayerTimeModel _prayerTimeModel = PrayerTimeModel();
  final DataService _dataService = DataService();
  List<Placemark> _location = [];

  @override
  void initState() {
    super.initState();
    getLocationPrayerTime();
  }

  void getLocationPrayerTime() async {
    try {
      _location = await getCurrentLocation();
      search(_location[0].administrativeArea.toString()).then(
        (value) => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomeScreen(
                  prayerTimeModel: _prayerTimeModel,
                  cityName: _location[0].administrativeArea.toString(),
                );
              },
            ),
          ),
        },
      );
    } on PermissionDeniedException catch (e) {
      showDialog(
        context: context,
        builder: (_) => ErrorDialog(
          errorMesage: e.toString(),
          errorTitle: 'Location Error',
          killTheApp: true,
        ),
      );
    } on PlatformException {
      showDialog(
        context: context,
        builder: (_) => ErrorDialog(
          errorMesage:
              'We couldn\'t get the location. This error can be caused by bad internet. Please restart the application.',
          errorTitle: 'Location Error',
          killTheApp: true,
        ),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (_) => ErrorDialog(
          errorMesage: e.toString(),
          errorTitle: 'Location Error',
          killTheApp: true,
        ),
      );
    }
  }

  Future<PrayerTimeModel> search(String cityName) async {
    PrayerTimeModel prayerTimeModel = await _dataService.getData(cityName);
    _prayerTimeModel = prayerTimeModel;
    return _prayerTimeModel;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SpinKitDualRing(color: accentColor),
      ),
    );
  }
}

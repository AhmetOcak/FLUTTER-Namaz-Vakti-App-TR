import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prayerapp/model/model.dart';

class DataService {
  Future<PrayerTimeModel> getData(String cityName) async {
    Uri url =
        Uri.parse("https://api.collectapi.com/pray/all?data.city=$cityName");

    var response = await http.post(
      url,
      headers: {
        "authorization": "apikey 2ehyKijlw4TOgwHb5zGL11:7wyAgBY84SwkjUDPGVaZmG",
        "content-type": "application/json",
      },
    );
    
    final json = jsonDecode(response.body);
    return PrayerTimeModel.fromJson(json);
  }
}

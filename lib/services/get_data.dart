import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:prayerapp/model/model.dart';

class GetData {
  Future<PrayerTimeModel> getData() async {
    Uri url =
        Uri.parse("https://api.collectapi.com/pray/all?data.city=istanbul");

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

class PrayerTimeModel {
  final String? imsak;
  final String? imsakVakti;
  final String? gunes;
  final String? gunesVakti;
  final String? ogle;
  final String? ogleVakti;
  final String? ikindi;
  final String? ikindiVakti;
  final String? aksam;
  final String? aksamVakti;
  final String? yatsi;
  final String? yatsiVakti;

  PrayerTimeModel({
    this.ogle,
    this.ogleVakti,
    this.ikindi,
    this.ikindiVakti,
    this.aksam,
    this.aksamVakti,
    this.yatsi,
    this.yatsiVakti,
    this.imsak,
    this.imsakVakti,
    this.gunes,
    this.gunesVakti,
  });

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    final imsak = json['result'][0]['vakit'];
    final imsakVakti = json['result'][0]['saat'];
    final gunes = json['result'][1]['vakit'];
    final gunesVakti = json['result'][1]['saat'];
    final ogle = json['result'][2]['vakit'];
    final ogleVakti = json['result'][2]['saat'];
    final ikindi = json['result'][3]['vakit'];
    final ikindiVakti = json['result'][3]['saat'];
    final aksam = json['result'][4]['vakit'];
    final aksamVakti = json['result'][4]['saat'];
    final yatsi = json['result'][5]['vakit'];
    final yatsiVakti = json['result'][5]['saat'];

    return PrayerTimeModel(
      imsak: imsak,
      imsakVakti: imsakVakti,
      gunes: gunes,
      gunesVakti: gunesVakti,
      ogle: ogle,
      ogleVakti: ogleVakti,
      ikindi: ikindi,
      ikindiVakti: ikindiVakti,
      aksam: aksam,
      aksamVakti: aksamVakti,
      yatsi: yatsi,
      yatsiVakti: yatsiVakti,
    );
  }
}

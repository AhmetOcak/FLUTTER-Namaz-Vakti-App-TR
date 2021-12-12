import 'package:flutter/material.dart';
import 'package:prayerapp/constants/constant.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 30,
      child: const Divider(
        color: accentColor,
        height: 1,
        thickness: 0.5,
      ),
    );
  }
}

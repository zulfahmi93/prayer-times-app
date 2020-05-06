import 'package:flutter/material.dart';

import 'ui/pg_home/page.dart';

class PrayerTimesApp extends StatelessWidget {
  // ------------------------------- METHODS ------------------------------
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

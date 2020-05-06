import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayer_times/ui/pg_qiblah/page.dart';

class HomePage extends StatelessWidget {
  // ------------------------------- METHODS ------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomePageBody(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  // ------------------------------- METHODS ------------------------------
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 72.0),
        _Header(),
        SizedBox(height: 24.0),
        _PrayerTimesList(),
        SizedBox(height: 24.0),
        RaisedButton(
          child: Text(
            'Show Qiblah',
          ),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) {
                  return QiblahPage();
                }
              ),
            );
          },
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  // ------------------------------- METHODS ------------------------------
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '15 minutes',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        Text(
          'left until Maghrib',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.location_on),
            Text(
              'KAJANG'
            ),
          ],
        ),
      ],
    );
  }
}

class _PrayerTimesList extends StatelessWidget {
  // ------------------------------- METHODS ------------------------------
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        _PrayerTimesListTile(
          prayerName: 'Fajr',
          prayerTime: '5:57 AM',
        ),
        _PrayerTimesListTile(
          prayerName: 'Sunrise',
          prayerTime: '7:19 AM',
        ),
        _PrayerTimesListTile(
          prayerName: 'Dhuhr',
          prayerTime: '1:19 AM',
        ),
        _PrayerTimesListTile(
          prayerName: 'Asr',
          prayerTime: '4:41 AM',
        ),
        _PrayerTimesListTile(
          prayerName: 'Maghrib',
          prayerTime: '7:15 AM',
        ),
        _PrayerTimesListTile(
          prayerName: 'Isha',
          prayerTime: '8:30 AM',
        ),
      ],
    );
  }
}

class _PrayerTimesListTile extends StatelessWidget {
  // ---------------------------- CONSTRUCTORS ----------------------------
  _PrayerTimesListTile({
    this.prayerName,
    this.prayerTime,
  });

  // ------------------------------- FIELDS -------------------------------
  final String prayerName;
  final String prayerTime;

  // ------------------------------- METHODS ------------------------------
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 8.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.alarm,
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Text(
                  prayerName,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              Text(
                prayerTime,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}


// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/pages/LoadBoard.dart';
import 'package:carrier_app/pages/Notification.dart';
import 'package:carrier_app/pages/Setting.dart';
import 'package:carrier_app/pages/Track.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> screenList = [LoadBoard(), Track(), Notifications(), Setting()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset(
                  'lib/assets/Home.svg',
                  height: SizeConfig.heightMultiplier * 3,
                ),
                label: "Load Boards"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset(
                  'lib/assets/Track.svg',
                  height: SizeConfig.heightMultiplier * 3,
                ),
                label: "Track"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset(
                  'lib/assets/Notification.svg',
                  height: SizeConfig.heightMultiplier * 3,
                ),
                label: "Notifications"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset(
                  'lib/assets/Settings.svg',
                  height: SizeConfig.heightMultiplier * 3,
                ),
                label: "Settings")
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: Center(child: screenList.elementAt(_currentIndex)));
  }
}

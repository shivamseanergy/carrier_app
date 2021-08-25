// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "LOAD BOARD",
              style: TextStyle(fontSize: SizeConfig.textMultiplier * 2),
            ),
          ),
          backgroundColor: AppTheme.appPrimaryColor,
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'lib/assets/Logout.svg',
                  color: Colors.white,
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset('lib/assets/Home.svg'),
                label: "Load Boards"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset('lib/assets/Track.svg'),
                label: "Track"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset('lib/assets/Notification.svg'),
                label: "Notifications"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: SvgPicture.asset('lib/assets/Settings.svg'),
                label: "Settings")
          ],
        ),
        body: Container());
  }
}

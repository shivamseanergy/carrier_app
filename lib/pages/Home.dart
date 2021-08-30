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
                icon: _currentIndex == 0
                    ? Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: SizeConfig.heightMultiplier * 5,
                          width: SizeConfig.widthMultiplier * 10,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'lib/assets/Home-Red.svg',
                              height: SizeConfig.heightMultiplier * 2.5,
                            ),
                          ),
                        ),
                      )
                    : SvgPicture.asset(
                        'lib/assets/Home.svg',
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                label: "LOAD BOARDS"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: _currentIndex == 1
                    ? Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: SizeConfig.heightMultiplier * 5,
                          width: SizeConfig.widthMultiplier * 10,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'lib/assets/Track-Red.svg',
                              height: SizeConfig.heightMultiplier * 2.5,
                            ),
                          ),
                        ),
                      )
                    : SvgPicture.asset(
                        'lib/assets/Track.svg',
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                label: "TRACK"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: _currentIndex == 2
                    ? Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: SizeConfig.heightMultiplier * 5,
                          width: SizeConfig.widthMultiplier * 10,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'lib/assets/Notification-Red.svg',
                              height: SizeConfig.heightMultiplier * 2.5,
                            ),
                          ),
                        ),
                      )
                    : SvgPicture.asset(
                        'lib/assets/Notification.svg',
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                label: "NOTIFICATION"),
            BottomNavigationBarItem(
                backgroundColor: AppTheme.appSecondaryColor,
                icon: _currentIndex == 3
                    ? Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: SizeConfig.heightMultiplier * 5,
                          width: SizeConfig.widthMultiplier * 10,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'lib/assets/Settings-Red.svg',
                              height: SizeConfig.heightMultiplier * 2.5,
                            ),
                          ),
                        ),
                      )
                    : SvgPicture.asset(
                        'lib/assets/Settings.svg',
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                label: "SETTINGS")
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

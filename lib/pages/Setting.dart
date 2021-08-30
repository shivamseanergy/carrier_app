// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'package:flutter_switch/flutter_switch.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool firstToggle = false;
  bool secondToggle = false;
  bool thirdToggle = false;
  bool fourthToggle = false;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(AppTheme.appPrimaryColor);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.appBackgroundColor,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(bottom: 25),
            width: double.infinity,
            color: AppTheme.appPrimaryColor,
            height: SizeConfig.heightMultiplier * 12,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "Setting",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 2.5,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('lib/assets/Logout.svg'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Show New Notification",
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2,
                                          color:
                                              AppTheme.settingHeadingTextColor),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      style: TextStyle(
                                        color:
                                            AppTheme.settingSubHeadingTextColor,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                                FlutterSwitch(
                                  activeColor: AppTheme.appPrimaryColor,
                                  height: SizeConfig.heightMultiplier * 4,
                                  width: SizeConfig.widthMultiplier * 15,
                                  value: firstToggle,
                                  onToggle: (bool value) {
                                    setState(() {
                                      firstToggle = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "High-urgency Notification",
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2,
                                          color:
                                              AppTheme.settingHeadingTextColor),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      style: TextStyle(
                                        color:
                                            AppTheme.settingSubHeadingTextColor,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                                FlutterSwitch(
                                  activeColor: AppTheme.appPrimaryColor,
                                  height: SizeConfig.heightMultiplier * 4,
                                  width: SizeConfig.widthMultiplier * 15,
                                  value: secondToggle,
                                  onToggle: (bool value) {
                                    setState(() {
                                      secondToggle = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Low-urgency Notification",
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2,
                                          color:
                                              AppTheme.settingHeadingTextColor),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      style: TextStyle(
                                        color:
                                            AppTheme.settingSubHeadingTextColor,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                                FlutterSwitch(
                                  activeColor: AppTheme.appPrimaryColor,
                                  height: SizeConfig.heightMultiplier * 4,
                                  width: SizeConfig.widthMultiplier * 15,
                                  value: thirdToggle,
                                  onToggle: (bool value) {
                                    setState(() {
                                      thirdToggle = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "All Other Notification",
                                      style: TextStyle(
                                          fontSize:
                                              SizeConfig.textMultiplier * 2,
                                          color:
                                              AppTheme.settingHeadingTextColor),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      style: TextStyle(
                                        color:
                                            AppTheme.settingSubHeadingTextColor,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                                FlutterSwitch(
                                  activeColor: AppTheme.appPrimaryColor,
                                  height: SizeConfig.heightMultiplier * 4,
                                  width: SizeConfig.widthMultiplier * 15,
                                  value: fourthToggle,
                                  onToggle: (bool value) {
                                    setState(() {
                                      fourthToggle = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}

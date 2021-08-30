// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/model/LoadBoardModel.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<LoadBoardModel> loadBoardList = [
    LoadBoardModel(
      "566663366",
      "MANCHESTER",
      "Equipment #957421",
      "office # 45678989",
      "lib/assests/Track.svg",
      "lib/assests/Track.svg",
    ),
    LoadBoardModel(
      "566663366",
      "MANCHESTER",
      "Equipment #957421",
      "office # 45678989",
      "lib/assests/Track.svg",
      "lib/assests/Track.svg",
    ),
    LoadBoardModel(
      "566663366",
      "MANCHESTER",
      "Equipment #957421",
      "office # 45678989",
      "lib/assests/Track.svg",
      "lib/assests/Track.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(bottom: 25),
            height: SizeConfig.heightMultiplier * 12,
            width: double.infinity,
            color: AppTheme.appPrimaryColor,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(""),
                  Text(
                    "NOTIFICATION",
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: loadBoardList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 6.0),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      child: Container(
                        alignment: FractionalOffset.centerLeft,
                        child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            // trailing: Icon(
                            //   Icons.arrow_forward_ios,
                            //   size: 14.0,
                            // ),
                            // leading: Container(
                            //   width: SizeConfig.heightMultiplier *
                            //       5, // can be whatever value you want
                            //   alignment: Alignment.center,
                            //   child: Image.asset(
                            //     'assets/Clock.png',
                            //     alignment: Alignment.center,
                            //     height: SizeConfig.heightMultiplier * 8.2,
                            //     width: SizeConfig.heightMultiplier * 8.2,
                            //   ),
                            // ),
                            title: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 8,
                                  width: SizeConfig.heightMultiplier * 8,
                                  decoration: const BoxDecoration(
                                      color: AppTheme.appPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: SvgPicture.asset(
                                        'lib/assets/Shipping.svg'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text(
                                          loadBoardList[index].ordrId!,
                                          style: TextStyle(
                                              color: Color(0xFFA7A7A7),
                                              fontWeight: FontWeight.w600,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      2),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Text(
                                              "PEARL",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.8),
                                            ),
                                          ),
                                          Text(
                                            "TO",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.8,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Text(
                                              loadBoardList[index]
                                                  .whereTo!
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text(
                                          loadBoardList[index].equipment!,
                                          style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.8),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text(
                                          loadBoardList[index].office!,
                                          style: TextStyle(
                                              color: Colors.grey[900],
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  loadBoardList[index].EmailIcon!,
                                ),
                                SvgPicture.asset(
                                    loadBoardList[index].phoneIcon!)
                              ],
                            )),
                      ),
                      onTap: () {},
                    ),
                  );
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

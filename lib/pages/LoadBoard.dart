// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/model/LoadBoardModel.dart';
import 'package:carrier_app/pages/Email.dart';
import 'package:carrier_app/pages/LoadSummary.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadBoard extends StatefulWidget {
  const LoadBoard({Key? key}) : super(key: key);

  @override
  _LoadBoardState createState() => _LoadBoardState();
}

class _LoadBoardState extends State<LoadBoard> {
  List<LoadBoardModel> loadBoardList = [
    LoadBoardModel(
      "566663366",
      "MANCHESTER",
      "Equipment #957421",
      "office # 45678989",
      "lib/assets/Phone.svg",
      "lib/assets/Email.svg",
    ),
    LoadBoardModel(
      "566663366",
      "MANCHESTER",
      "Equipment #957421",
      "office # 45678989",
      "lib/assets/Phone.svg",
      "lib/assets/Email.svg",
    ),
    LoadBoardModel(
      "566663366",
      "MANCHESTER",
      "Equipment #957421",
      "office # 45678989",
      "lib/assets/Phone.svg",
      "lib/assets/Email.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(AppTheme.appPrimaryColor);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.appBackgroundColor,

        // appBar: AppBar(
        //   toolbarHeight: SizeConfig.heightMultiplier * 12,
        //   centerTitle: true,
        //   title: Text(
        //     "LOAD BOARD",
        //     style: TextStyle(fontSize: SizeConfig.textMultiplier * 2.5),
        //   ),
        //   backgroundColor: AppTheme.appPrimaryColor,
        //   actions: [
        //     IconButton(
        //         onPressed: () {},
        //         icon: SvgPicture.asset(
        //           'lib/assets/Logout.svg',
        //           color: Colors.white,
        //         ))
        //   ],
        // ),
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
                    "LOAD BOARD",
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
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(5),
                        hintText:
                            "Origin, Destination, Equipment, Office Number",
                        suffixIcon: Container(
                          margin: EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: AppTheme.appPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'lib/assets/Search.svg',
                            ),
                          ),
                        )),
                    style: TextStyle(fontSize: SizeConfig.textMultiplier * 2),
                  ),
                ),
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
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Text(
                                              loadBoardList[index].ordrId!,
                                              style: TextStyle(
                                                  color: Color(0xFFA7A7A7),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      2.2),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            padding: EdgeInsets.all(5),
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFC1FFBD),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: Text(
                                              "Order Confirmed",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.5,
                                                  color: Color(0xFF6BB766)),
                                            ),
                                          ),
                                        ],
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
                                                      2),
                                            ),
                                          ),
                                          Text(
                                            "TO",
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize:
                                                  SizeConfig.textMultiplier * 2,
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
                                                      2),
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
                                                      2),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text(
                                          loadBoardList[index].office!,
                                          style: TextStyle(
                                              color: Color(0xFFA2A2A2),
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      2),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: AppTheme.blackColor,
                                            shape: BoxShape.circle),
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (_) => Email()));
                                          },
                                          icon: SvgPicture.asset(
                                              loadBoardList[index].EmailIcon!),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: const BoxDecoration(
                                            color: AppTheme.appPrimaryColor,
                                            shape: BoxShape.circle),
                                        child: IconButton(
                                          icon: SvgPicture.asset(
                                              loadBoardList[index].phoneIcon!),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => LoadSummary()));
                      },
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

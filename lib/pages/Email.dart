// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('lib/assets/Close.svg')),
                    ),
                    Text(
                      "EMAIL",
                      style: TextStyle(
                          fontSize: SizeConfig.textMultiplier * 2.5,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('lib/assets/Send.svg')),
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 50, left: 8, right: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 4,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: const InputDecoration(
                                alignLabelWithHint: true,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(5),
                                hintText: "To :",
                              ),
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 4,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(5),
                                hintText: "Cc/Bcc :",
                              ),
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 4,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(5),
                                hintText: "Subject :",
                              ),
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2),
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child:
                                        SvgPicture.asset('lib/assets/PDF.svg'),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shipping details PDF',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.5),
                                      ),
                                      Text(
                                        '20 KB',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1.2,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.close),
                                color: Colors.grey,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Load #: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Origin: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Destination: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Equipment#: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Office #: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Pickup Date: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Delivery Date: '),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Status: '),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('546897512325'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Pearl'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Pearl Manchester'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('9574215'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('+1 356 25458'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('25-July-2021'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('30-July-2021'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2),
                                    child: Text('Confirmed'),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ])
            ])));
  }
}

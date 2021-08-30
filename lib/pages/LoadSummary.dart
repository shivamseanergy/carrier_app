// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class LoadSummary extends StatefulWidget {
  const LoadSummary({Key? key}) : super(key: key);

  @override
  _LoadSummaryState createState() => _LoadSummaryState();
}

class _LoadSummaryState extends State<LoadSummary> {
  String? dropdownValue;
  List dropdownList = ['one', 'two', 'three', 'four'];
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
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('lib/assets/BackButton.svg'),
                    ),
                    Text(
                      "LOAD SUMMARY",
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
                      elevation: 5,
                      margin: EdgeInsets.only(top: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        "546897512325",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.8),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Row(
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
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Text(
                                              "TO",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.8,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(2),
                                            child: Text(
                                              "MANCHESTER",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        "Equipment #: 9574215",
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
                                        "Office #: +1 365 25458",
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
                                        "Pickup Date: 25-July-2021",
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
                                        "Delivery Date: 30-July-2021",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.8),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
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
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Status Update",
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 2,
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.blackColor),
                              ),
                            ),
                            IgnorePointer(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: ButtonTheme(
                                      alignedDropdown: true,
                                      child: SizedBox(
                                        child: DropdownButtonFormField<String>(
                                          focusColor: Colors.grey[300],
                                          decoration: InputDecoration(
                                            fillColor: Color(0xFFF8F8F8),
                                            hintText: 'Pick Up / Loaded',
                                            filled: true,
                                            contentPadding: EdgeInsets.all(
                                                SizeConfig.textMultiplier *
                                                    1.5),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      SizeConfig
                                                              .widthMultiplier *
                                                          2),
                                              borderSide: const BorderSide(),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(SizeConfig
                                                            .widthMultiplier *
                                                        2)),
                                                borderSide: const BorderSide(
                                                    color: Colors.grey)),
                                          ),

                                          // isExpanded: true,
                                          value: dropdownValue,
                                          // validator: (String value) {
                                          //   if (value?.isEmpty ?? true) {
                                          //     print(value);
                                          //     return 'Please select a group';
                                          //   }
                                          //   return null;
                                          // },
                                          onChanged: (newValue) {},
                                          items: dropdownList.map((item) {
                                            return DropdownMenuItem<String>(
                                              value: item,
                                              child: Center(
                                                child: Text(
                                                  item,
                                                  style: TextStyle(
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          1.5,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DottedBorder(
                                    color: Colors.black,
                                    strokeWidth: 1,
                                    child: Container(
                                      color: Color(0xFFF8F8F8),
                                      height: SizeConfig.heightMultiplier * 30,
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              'lib/assets/Upload.svg'),
                                          Text('Document Upload'),
                                          FlatButton(
                                            // splashColor: Colors.red,
                                            // textColor: Colors.white,
                                            color: AppTheme.blackColor,
                                            child: const Text(
                                              'Upload',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              setState(() {});
                                            },
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ]),
            ])));
  }
}

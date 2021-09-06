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
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 5),
                height: SizeConfig.heightMultiplier * 12,
                width: double.infinity,
                color: AppTheme.appPrimaryColor,
              ),
              Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.heightMultiplier * 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset('lib/assets/BackButton.svg'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "LOAD SUMMARY",
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier * 2,
                            color: Colors.white),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.all(SizeConfig.heightMultiplier * 1.5),
                        child: SvgPicture.asset('lib/assets/Logout.svg',
                            height: SizeConfig.imageSizeMultiplier * 5,
                            width: SizeConfig.imageSizeMultiplier * 5),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.heightMultiplier * 1.5,
                      right: SizeConfig.heightMultiplier * 1.5,
                      bottom: SizeConfig.heightMultiplier * 1.5,
                      top: SizeConfig.heightMultiplier * 2),
                  child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: SizeConfig.heightMultiplier * 2,
                            right: SizeConfig.heightMultiplier * 2,
                            top: SizeConfig.heightMultiplier * 2,
                            bottom: SizeConfig.heightMultiplier * 4),
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
                                      padding: EdgeInsets.all(
                                          SizeConfig.heightMultiplier * 0.4),
                                      child: Text(
                                        "546897512325",
                                        style: TextStyle(
                                            color: Color(0xFFA7A7A7),
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.8),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          SizeConfig.heightMultiplier * 0.2),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(
                                                SizeConfig.heightMultiplier *
                                                    0.2),
                                            child: Text(
                                              "PEARL",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.6),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                SizeConfig.heightMultiplier *
                                                    0.2),
                                            child: Text(
                                              "TO",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.6,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                SizeConfig.heightMultiplier *
                                                    0.2),
                                            child: Text(
                                              "MANCHESTER",
                                              style: TextStyle(
                                                  color: Colors.grey[900],
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.6),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          SizeConfig.heightMultiplier * 0.2),
                                      child: Text(
                                        "Equipment #: 9574215",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.6),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          SizeConfig.heightMultiplier * 0.2),
                                      child: Text(
                                        "Office #: +1 365 25458",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.6),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          SizeConfig.heightMultiplier * 0.2),
                                      child: Text(
                                        "Pickup Date: 25-July-2021",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.6),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          SizeConfig.heightMultiplier * 0.2),
                                      child: Text(
                                        "Delivery Date: 30-July-2021",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.6),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                Container(
                                  height: SizeConfig.heightMultiplier * 6,
                                  width: SizeConfig.heightMultiplier * 6,
                                  decoration: const BoxDecoration(
                                      color: AppTheme.appPrimaryColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
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
                            SizedBox(
                              height: 10,
                            ),
                            IgnorePointer(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: ButtonTheme(
                                      alignedDropdown: true,
                                      child: SizedBox(
                                        height: SizeConfig.heightMultiplier * 8,
                                        child: DropdownButtonFormField<String>(
                                          decoration: InputDecoration(
                                            fillColor: Color(0xFFF8F8F8),
                                            hintText: 'Pick Up / Loaded',
                                            hintStyle: TextStyle(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        1.8,
                                                color: Colors.grey[500]),
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
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius
                                                    .circular(SizeConfig
                                                            .widthMultiplier *
                                                        2),
                                                borderSide: BorderSide(
                                                    color: Color(0xC1C180))),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(SizeConfig
                                                          .widthMultiplier *
                                                      2)),
                                            ),
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
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: DottedBorder(
                                  dashPattern: [6, 3],
                                  color: Color(0xFFD8D8D8),
                                  strokeWidth: 2,
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
                                        Text(
                                          'Document Upload',
                                          style: TextStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1.8,
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        FlatButton(
                                          // splashColor: Colors.red,
                                          // textColor: Colors.white,
                                          color: AppTheme.blackColor,
                                          child: const Text(
                                            'Upload',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      )),
                ),
                Material(
                  // needed
                  color: AppTheme.appPrimaryColor,
                  borderRadius:
                      BorderRadius.circular(SizeConfig.heightMultiplier * 2.5),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    }, // needed
                    child: Container(
                      height: SizeConfig.heightMultiplier * 5,
                      width: SizeConfig.widthMultiplier * 45,
                      decoration: const BoxDecoration(

                          // gradient: LinearGradient(
                          //     colors: [Colors.orange[700], Colors.orange[800]],
                          //     begin: Alignment.centerRight,
                          //     end: Alignment.centerLeft),
                          ),
                      child: Center(
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.textMultiplier * 1.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ])));
  }
}

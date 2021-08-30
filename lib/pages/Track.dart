// ignore_for_file: file_names

import 'package:carrier_app/helper/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'lib/assets/Logout.svg',
              height: SizeConfig.heightMultiplier * 3,
            ),
          )
        ],
        title: Text("track"),
      ),
      body: Center(
        child: Text("track"),
      ),
    );
  }
}

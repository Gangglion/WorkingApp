// 산책 화면

import 'package:flutter/material.dart';
import 'package:flutter_workingapp/widget/just_walkmode_widget.dart';
import 'package:flutter_workingapp/widget/nomode_rowwidget.dart';
import 'package:flutter_workingapp/widget/set_walkmode_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WalkSceen extends StatefulWidget {
  const WalkSceen({Key? key}) : super(key: key);

  @override
  State<WalkSceen> createState() => _WalkSceenState();
}

class _WalkSceenState extends State<WalkSceen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  int walkMode = 0; // 1은 걸음수 지정 산책 모드, 2는 일반 산책 모드 - 프로바이더 사용해서 관리
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: (MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                0.6,
            margin: const EdgeInsets.all(10),
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
            ),
          ),
          if (walkMode == 0) ...[
            const NoModRow()
          ] else if (walkMode == 1) ...[
            const SetWalkMode()
          ] else ...[
            const JustWalkMode()
          ],
        ],
      ),
    );
  }
}

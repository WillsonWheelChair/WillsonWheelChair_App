import 'package:flutter/material.dart';
import 'package:flutter_kakao_map/flutter_kakao_map.dart';
import 'package:flutter_kakao_map/kakao_maps_flutter_platform_interface.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyAppOne(),
    );
  }
}

class MyAppOne extends StatefulWidget {
  const MyAppOne({Key? key}) : super(key: key);

  @override
  State<MyAppOne> createState() => _MyAppOneState();
}

class _MyAppOneState extends State<MyAppOne> {
  late KakaoMapController mapController;
  MapPoint _visibleRegion = const MapPoint(37.5087553, 127.0632877);
  final CameraPosition _kInitialPosition =
      const CameraPosition(target: MapPoint(37.5087553, 127.0632877), zoom: 5);

  void onMapCreated(KakaoMapController controller) async {
    final MapPoint visibleRegion = await controller.getMapCenterPoint();
    setState(() {
      mapController = controller;
      _visibleRegion = visibleRegion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter KakoMap example'),),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300.0,
              height: 200.0,
              child: KakaoMap(
                onMapCreated: onMapCreated,
                initialCameraPosition: _kInitialPosition,
              ),
            ),
          )
        ],
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaomap_webview/kakaomap_webview.dart';
import 'package:willsonwheelchair_app/pages/bluetooth/bluetooth_connect.dart';

const String _kakaoMapKey = 'efe8d05ab94a0497ce8225aaab155241';

class HomeViewPage extends StatelessWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('main')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          KakaoMapView(
              width: size.width,
              height: 400,
              kakaoMapKey: _kakaoMapKey,
              lat: 33.450701,
              lng: 126.570667,
              showMapTypeControl: true,
              showZoomControl: true,
              draggableMarker: true,
              polyline: KakaoFigure(
                path: [
                  KakaoLatLng(lat: 33.45080604081833, lng: 126.56900858718982),
                  KakaoLatLng(lat: 33.450766588506054, lng: 126.57263147947938),
                  KakaoLatLng(lat: 33.45162008091554, lng: 126.5713226693152)
                ],
                strokeColor: Colors.blue,
                strokeWeight: 2.5,
                strokeColorOpacity: 0.9,
              ),
              polygon: KakaoFigure(
                path: [
                  KakaoLatLng(lat: 33.45086654081833, lng: 126.56906858718982),
                  KakaoLatLng(lat: 33.45010890948828, lng: 126.56898629127468),
                  KakaoLatLng(lat: 33.44979857909499, lng: 126.57049357211622),
                  KakaoLatLng(lat: 33.450137483918496, lng: 126.57202991943016),
                  KakaoLatLng(lat: 33.450706188506054, lng: 126.57223147947938),
                  KakaoLatLng(lat: 33.45164068091554, lng: 126.5713126693152)
                ],
                polygonColor: Colors.red,
                polygonColorOpacity: 0.3,
                strokeColor: Colors.deepOrange,
                strokeWeight: 2.5,
                strokeColorOpacity: 0.9,
                strokeStyle: StrokeStyle.shortdashdot,
              ),
              markerImageURL:
              'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png',
              onTapMarker: (message) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message.message)));
              }),
            ElevatedButton(
              onPressed: () {
                Get.to(BluetoothConnect(title: 'hello'));
              },
              child: Text('connect bluetooth'),
            )
        ],
      ),
    );
  }

}
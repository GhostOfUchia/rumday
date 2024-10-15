// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final double longitude;
  final double latitude;
  const MapScreen({
    super.key,
    required this.longitude,
    required this.latitude,
  });

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            target: LatLng(widget.latitude, widget.longitude), zoom: 14),
      ),
    );
  }
}

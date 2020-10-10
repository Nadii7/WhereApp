import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  BitmapDescriptor pinLocationIcon;
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    setCustomMapPin();
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/destination_map_marker.png');
  }

  @override
  Widget build(BuildContext context) {
    LatLng pinPosition = LatLng(37.3797536, -122.1017334);

    // these are the minimum required values to set
    // the camera position
    CameraPosition initialLocation =
        CameraPosition(zoom: 15, bearing: 30, target: pinPosition);

    return GoogleMap(
      myLocationEnabled: true,
      compassEnabled: true,
      markers: _markers,
      initialCameraPosition: initialLocation,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
        setState(() {
          _markers.add(Marker(
            markerId: MarkerId('<MARKER_ID>'),
            position: pinPosition,
            icon: BitmapDescriptor.defaultMarker,
          ));
        });
      },
      onLongPress: (argument) {
        setState(() {
          _markers.add(Marker(
            markerId: MarkerId('<MARKER_ID>'),
            position: argument,
            icon: BitmapDescriptor.defaultMarker,
          ));
        });
      },
    );
  }
}

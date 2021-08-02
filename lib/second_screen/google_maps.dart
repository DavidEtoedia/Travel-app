import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleView extends StatefulWidget {
  const GoogleView({Key key}) : super(key: key);

  @override
  _GoogleViewState createState() => _GoogleViewState();
}

class _GoogleViewState extends State<GoogleView> {
  static const _intialCameraPosition =
      CameraPosition(target: LatLng(1.290270, 103.851959), zoom: 11);

  GoogleMapController _googleMapController;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        initialCameraPosition: _intialCameraPosition,
        mapType: MapType.normal,
        zoomControlsEnabled: false,
        onMapCreated: (controller) => _googleMapController = controller,
        markers: {miramaSands, marinaBaySands, swissotelSands},
      ),
    );
  }
}

Marker marinaBaySands = Marker(
    markerId: MarkerId('marinaBay'),
    position: LatLng(1.282302, 103.858528),
    infoWindow: InfoWindow(title: 'Marina Bay Hotel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

Marker miramaSands = Marker(
    markerId: MarkerId('marinaBay'),
    position: LatLng(1.288710, 103.837372),
    infoWindow: InfoWindow(title: 'Marina Bay Hotel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

Marker swissotelSands = Marker(
    markerId: MarkerId('marinaBay'),
    position: LatLng(1.293354, 103.853561),
    infoWindow: InfoWindow(title: 'Marina Bay Hotel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

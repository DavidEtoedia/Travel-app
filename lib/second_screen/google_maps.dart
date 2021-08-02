import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/google%20full%20view/googl_map_fullview.dart';

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
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: GoogleMap(
              initialCameraPosition: _intialCameraPosition,
              mapType: MapType.normal,
              zoomControlsEnabled: false,
              onMapCreated: (controller) => _googleMapController = controller,
              markers: {merindasVilla, jaysMansion, swissotelSands},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GoogleFullView()));
            },
            child: Container(
                height: 40,
                width: 80,
                child: Card(
                  elevation: 5,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Full View',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
        )
      ],
    );
  }
}

Marker merindasVilla = Marker(
    markerId: MarkerId('Merindas Villa'),
    position: LatLng(1.282302, 103.858528),
    infoWindow: InfoWindow(title: 'Merindas Villa'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

Marker jaysMansion = Marker(
    markerId: MarkerId('Jay\'s Mansion'),
    position: LatLng(1.288710, 103.837372),
    infoWindow: InfoWindow(title: 'Jay\'s Mansion'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

Marker swissotelSands = Marker(
    markerId: MarkerId('Marina Bay'),
    position: LatLng(1.293354, 103.853561),
    infoWindow: InfoWindow(title: 'Marina Bay Hotel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

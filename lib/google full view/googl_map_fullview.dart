import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:show_up_animation/show_up_animation.dart';

class GoogleFullView extends StatefulWidget {
  const GoogleFullView({Key key}) : super(key: key);

  @override
  _GoogleFullViewState createState() => _GoogleFullViewState();
}

class _GoogleFullViewState extends State<GoogleFullView> {
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
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              initialCameraPosition: _intialCameraPosition,
              mapType: MapType.normal,
              zoomControlsEnabled: false,
              onMapCreated: (controller) => _googleMapController = controller,
              markers: {miramaSands, marinaBaySands, swissotelSands},
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  height: 180,
                  width: 100,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ShowUpAnimation(
                      delayStart: Duration(seconds: 1),
                      child: Row(
                        children: [
                          displayCard(context, 'assets/images/basebg.png',
                              'Merindas Villa', 'Flarinko Singapore'),
                          displayCard(context, 'assets/images/basebg2.png',
                              'Jay\'s Mansion', 'Trinidad & Tobago'),
                          displayCard(context, 'assets/images/basebg.png',
                              'Merindas Villa', 'Merindas Villa'),
                          displayCard(context, 'assets/images/basebg2.png',
                              'Jay\'s Mansion', 'Trinidad & Tobago'),
                        ],
                      ),
                    ),
                  ))),
          Positioned(
              left: 0,
              right: 300,
              top: 75,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Card(
                    elevation: 6,
                    shape: CircleBorder(),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                      ),
                    ),
                  ),
                ),
              ))
        ],
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

displayCard(BuildContext context, String imagePath, String locationName,
    String buildingName) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        height: 120,
        width: 270,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 18),
        child: Container(
          height: 100,
          width: 100,
          child: ClipRRect(child: Image(image: AssetImage(imagePath))),
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 130, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(locationName,
                style: GoogleFonts.nunito(
                    fontSize: 19,
                    fontWeight: FontWeight.w800,
                    color: Colors.black)),
            SizedBox(
              height: 2,
            ),
            Text(buildingName,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black)),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_outlined,
                  size: 20,
                  color: Color(0xffFFBD12),
                ),
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
          ],
        ),
      )
    ],
  );
}

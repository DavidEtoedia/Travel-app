import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/second_screen/second_screen.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 17,
          ),
          travelCard(context, 'assets/images/basebg.png', 'Merindas Villa',
              'Flarinko Singapore'),
          travelCard(context, 'assets/images/basebg2.png', 'Jay\'s Mansion',
              'Trinidad & Tobago'),
          travelCard(context, 'assets/images/basebg.png', 'Merindas Villa',
              'Merindas Villa'),
          travelCard(context, 'assets/images/basebg2.png', 'Jay\'s Mansion',
              'Trinidad & Tobago'),
        ],
      ),
    );
  }
}

travelCard(BuildContext context, String imagePath, String locationName,
    String buildingName) {
  return InkWell(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DisplayScreen()));
    },
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          height: 90,
          width: 90,
          child: ClipRRect(child: Image(image: AssetImage(imagePath))),
        ),
        Container(
          child: Text(buildingName),
        ),
        Container(
          child: Text(locationName),
        )
      ],
    ),
  );
}

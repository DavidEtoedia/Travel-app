import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/second_screen/second_screen.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 19, right: 5),
          width: MediaQuery.of(context).size.width,
          height: 40,
          // color: Colors.black,
          child: Row(
            children: [
              Text(
                'Popular Destination',
                style: TextStyle(
                    fontFamily: 'NewYorkLarge',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                width: 84,
              ),
              Container(
                width: 95,
                height: 33,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('All Cities',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Icon(
                      Icons.expand_more_outlined,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
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
        ),
      ],
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
    child: Container(
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        height: 200,
        width: 200,
        child: Stack(
          children: [
            ClipRRect(child: Image(image: AssetImage(imagePath))),
            Padding(
              padding: const EdgeInsets.only(left: 110, top: 20),
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Color(0xffFFFFFF).withOpacity(0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_outlined,
                      size: 20,
                      color: Color(0xffFFBD12),
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 115, left: 15),
              child: Text(
                locationName,
                style: GoogleFonts.nunitoSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 12),
              child: Row(
                children: [
                  Container(
                    width: 23,
                    height: 23,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.96),
                        color: Colors.black.withOpacity(0.3)),
                    child:
                        Icon(Icons.location_on, color: Colors.white, size: 13),
                  ),
                  SizedBox(width: 10),
                  Text(
                    buildingName,
                    style: GoogleFonts.nunitoSans(
                        fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        )),
  );
}

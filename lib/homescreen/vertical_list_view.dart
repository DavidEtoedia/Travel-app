import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 29),
              child: Row(
                children: [
                  Text(
                    'Previous Bookings',
                    style: TextStyle(
                        fontFamily: 'NewYorkLarge',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      travelThumbnail('assets/images/smallthumbnail.png',
                          'Flarinko Singapore', 'Trinidads Villa', '\$5000'),
                      travelThumbnail('assets/images/smallthumbnail2.png',
                          'Flarinko Singapore', 'Tobago Palace', '\$5000'),
                      travelThumbnail('assets/images/smallthumbnail.png',
                          'Flarinko Singapore', 'Madison\'s Villa', '\$5000'),
                      travelThumbnail('assets/images/smallthumbnail2.png',
                          'Flarinko Singapore', 'Merindas Villa', '\$5000')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

travelThumbnail(
  String image,
  String locationName,
  String buildingName,
  String amount,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 24),
    child: Container(
      height: 60,
      width: 360,
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image(image: AssetImage(image)),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Row(children: [
                  Text(buildingName,
                      style: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w900)),
                  SizedBox(width: 130),
                  Text(
                    amount,
                    style: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w900),
                  )
                ]),
              ),

              // second row
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 8),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 18,
                            height: 18,
                            color: Color(0xffF5F3FF),
                            child: Icon(
                              Icons.location_on,
                              color: Color(0xff9E76FB),
                              size: 13,
                            ),
                          ),
                          Text(locationName),
                        ],
                      ),
                    ),
                    SizedBox(width: 53),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          'Book again',
                          style:
                              TextStyle(color: Color(0xffF97F67), fontSize: 12),
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          size: 25,
                          color: Color(0xffF97F67),
                        ),
                      ],
                    ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   margin: EdgeInsets.only(left: 30),
        //   child: Row(
        //     children: [
        //       InkWell(
        //           onTap: () {
        //             Navigator.pop(context);
        //           },
        //           child: Icon(Icons.arrow_back)),
        //       SizedBox(
        //         width: 80,
        //       ),
        //       Text(
        //         'Resort Info',
        //         style: TextStyle(
        //             fontFamily: 'NewYorkLarge',
        //             fontSize: 20,
        //             fontWeight: FontWeight.w700),
        //       )
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: Image(
                image: AssetImage('assets/images/Rectangle90.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200, left: 40),
              child: Text('Merindas Villa',
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w700)),
            ),
            Container(
              margin: EdgeInsets.only(top: 240, left: 30),
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
                    'Flarinko Singapore',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 17, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

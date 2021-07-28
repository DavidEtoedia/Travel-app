import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/second_screen/description_text.dart';
import 'package:travel_app/second_screen/display_image.dart';
import 'package:travel_app/second_screen/horizontal_thumnail.dart';

import 'location_map.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share_outlined,
              color: Colors.black,
              size: 29,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Resort Info',
          style: TextStyle(
              fontFamily: 'NewYorkLarge',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  DisplayImage(),
                  SizedBox(height: 30),
                  HorizontalThumbnail(),
                  SizedBox(height: 30),
                  DescriptionText(),
                  SizedBox(height: 30),
                  LocationMap(),
                  SizedBox(height: 100),
                ],
              ),
            ),
            bottomView()
          ],
        ),
      ),
    );
  }
}

Widget bottomView() {
  return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: Colors.white,
        height: 80,
        width: 0,
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '\$5000 ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Euclid Circular',
                          fontSize: 23,
                          fontWeight: FontWeight.w800)),
                  TextSpan(
                      text: '\/' 'person',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Euclid Circular',
                          fontSize: 15,
                          fontWeight: FontWeight.w300))
                ]),
              ),
              // SizedBox(
              //   width: 150,
              // ),
              Container(
                width: 140,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF97F67),
                ),
                child: Center(
                    child: Text(
                  'Book Now',
                  style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ));
}

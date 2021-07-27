import 'package:flutter/material.dart';

class LocationMap extends StatelessWidget {
  const LocationMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      height: 300,
      width: MediaQuery.of(context).size.width,
      color: Colors.blueAccent,
    );
  }
}

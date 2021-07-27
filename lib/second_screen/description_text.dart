import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: 'Description\n\n',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'NewYorkLarge',
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        TextSpan(
            text:
                'Standard Double is one of the most luxurious rooms in Mason Hotels, with a great view of the south western Beach, shining marble tiles and esquisite Beds just for\n your comfort',
            style: TextStyle(
                color: Color(0xff848A99),
                fontFamily: 'Euclid Circular',
                fontSize: 13,
                fontWeight: FontWeight.normal)),
      ])),
    );
  }
}

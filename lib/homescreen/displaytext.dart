import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  const DisplayText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 143),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(children: [
          TextSpan(
              text: 'Your Comfort is\n',
              style: TextStyle(
                  fontFamily: 'NewYorkLarge',
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: Colors.black)),
          TextSpan(
              text: 'our pleasure 👋🏾 ',
              style: TextStyle(
                  fontFamily: 'NewYorkLarge',
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: Colors.black)),
        ]),
      ),
    );
  }
}

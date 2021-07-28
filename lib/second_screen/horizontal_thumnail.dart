import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class HorizontalThumbnail extends StatefulWidget {
  const HorizontalThumbnail({Key key}) : super(key: key);

  @override
  _HorizontalThumbnailState createState() => _HorizontalThumbnailState();
}

class _HorizontalThumbnailState extends State<HorizontalThumbnail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Row(
        children: [
          //
          //
          //
          ShowUpAnimation(
            delayStart: Duration(milliseconds: 150),
            animationDuration: Duration(milliseconds: 1610),
            curve: Curves.fastLinearToSlowEaseIn,
            direction: Direction.horizontal,
            offset: 0.5,
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 12),
              child: Image(
                image: AssetImage('assets/images/thumbnail2.png'),
              ),
            ),
          ),

          //
          //
          //
          ShowUpAnimation(
            delayStart: Duration(milliseconds: 200),
            animationDuration: Duration(milliseconds: 1600),
            curve: Curves.fastLinearToSlowEaseIn,
            direction: Direction.horizontal,
            offset: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 12),
              child: Image(
                image: AssetImage('assets/images/thumbnail3.png'),
              ),
            ),
          ),

          //
          //
          //

          ShowUpAnimation(
            delayStart: Duration(milliseconds: 250),
            animationDuration: Duration(milliseconds: 1600),
            curve: Curves.fastLinearToSlowEaseIn,
            direction: Direction.horizontal,
            offset: 0.5,
            child: Container(
                margin: EdgeInsets.only(left: 8, right: 12),
                child: Image(
                  image: AssetImage('assets/images/thumbnail4.png'),
                )),
          ),

          //
          //
          //

          ShowUpAnimation(
            delayStart: Duration(milliseconds: 300),
            animationDuration: Duration(milliseconds: 1700),
            curve: Curves.fastLinearToSlowEaseIn,
            direction: Direction.horizontal,
            offset: 0.5,
            child: Container(
                margin: EdgeInsets.only(left: 8, right: 12),
                child: Image(
                  image: AssetImage('assets/images/thumbnail5.png'),
                )),
          ),

          //
          //
          //

          // ShowUpList(children: [
          //   buildHorizontalView('assets/images/thumbnail2.png'),
          // buildHorizontalView('assets/images/thumbnail3.png'),
          // buildHorizontalView('assets/images/thumbnail4.png'),
          // buildHorizontalView('assets/images/thumbnail5.png')
          // ])
        ],
      ),
    );
  }
}

// buildHorizontalView(String imagePath) {
//   return Container(
//     margin: EdgeInsets.only(left: 8, right: 12),
//     child: Image(image: AssetImage(imagePath)),
//   );
// }

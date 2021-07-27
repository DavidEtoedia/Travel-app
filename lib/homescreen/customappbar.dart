import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/Avatar.png')),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffA477FE).withOpacity(0.1),
            ),
            child: Icon(
              Icons.notifications,
              color: Color(0xffA477FE),
            ),
          )
        ],
      ),
    );
  }
}

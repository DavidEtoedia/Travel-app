import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2, color: Color(0xffCDCED2)),
              color: Colors.white,
            ),
            height: 45,
            width: MediaQuery.of(context).size.width * 0.74,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xffAFAEAD),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Search for room',
                    style: TextStyle(color: Color(0xffAFAEAD)),
                  )
                ],
              ),
            ),
          ),
          Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
                  Color(0xffFF9A86),
                  Color(0xffF15738),
                ]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.filter_list,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}

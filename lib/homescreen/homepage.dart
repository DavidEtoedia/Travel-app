import 'package:flutter/material.dart';
import 'package:travel_app/homescreen/bottom_nav.dart';
import 'package:travel_app/homescreen/customappbar.dart';
import 'package:travel_app/homescreen/displaytext.dart';
import 'package:travel_app/homescreen/horizontal_list_view.dart';
import 'package:travel_app/homescreen/searchbar.dart';
import 'package:travel_app/homescreen/vertical_list_view.dart';
import 'package:travel_app/second_screen/google_maps.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 20),
            DisplayText(),
            SizedBox(height: 30),
            SearchBar(),
            HorizontalListView(),
            SizedBox(height: 23),
            VerticalListView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

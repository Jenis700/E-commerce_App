import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/Screens/complete_profile/compelete_profile_screen.dart';
import 'package:e_commerce_app/constatnt.dart';
import 'package:flutter/material.dart';

import 'components/GridMenuScreen.dart';
import 'components/body.dart';

class WorldHomeScreen extends StatefulWidget {
  const WorldHomeScreen({Key? key}) : super(key: key);

  @override
  State<WorldHomeScreen> createState() => _WorldHomeScreenState();
}

class _WorldHomeScreenState extends State<WorldHomeScreen> {
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget bodyFunction() {
    switch (_page) {
      case 0:
        return Body();
      case 1:
        return MenuScreen();
      default:
        return CompleteProfileScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyFunction(),
      bottomNavigationBar: CurvedNavigationBar(
        color: kPrimaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[
          Icon(Icons.search, size: 30),
          Icon(Icons.menu, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(
            () {
              _page = index;
            },
          );
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

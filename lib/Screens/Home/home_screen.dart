import 'package:e_commerce_app/anums.dart';
import 'package:e_commerce_app/component/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomBar(selectedMenu: MenuState.home,),
    );
  }
}

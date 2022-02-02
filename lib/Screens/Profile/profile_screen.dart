import 'package:e_commerce_app/anums.dart';
import 'package:e_commerce_app/component/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomBar(selectedMenu: MenuState.profile),
    );
  }
}

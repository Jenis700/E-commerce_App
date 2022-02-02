import 'package:e_commerce_app/Screens/Cart/cart_screen.dart';
import 'package:e_commerce_app/Screens/Home/components/serxh_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_container.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            intOfItems: 0,
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            intOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constatnt.dart';
import '../../../size_config.dart';


class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surpise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: headingStyle.copyWith(
                  color: Colors.white, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

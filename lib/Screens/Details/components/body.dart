import 'package:e_commerce_app/Models/Product.dart';
import 'package:e_commerce_app/Screens/Details/components/product_description.dart';
import 'package:e_commerce_app/Screens/Details/components/product_images.dart';
import 'package:e_commerce_app/Screens/Details/components/top_rounded_container.dart';
import 'package:e_commerce_app/component/default_button.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'Color_dots.dart';

class Body extends StatelessWidget {
  Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth! * 0.15,
                          right: SizeConfig.screenWidth! * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(36),
                        ),
                        child: DefaultButton(
                          text: "Add to Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

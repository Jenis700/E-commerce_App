import 'package:e_commerce_app/Models/Product.dart';
import 'package:e_commerce_app/Screens/Details/details_screen.dart';
import 'package:e_commerce_app/Screens/Home/components/sectoin-title.dart';
import 'package:e_commerce_app/component/product_card.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(height: getProportionateScreenWidth(15)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: demoProducts[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:e_commerce_app/component/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constatnt.dart';
import '../../../size_config.dart';


class CardDetails extends StatelessWidget {
  const CardDetails({
    Key? key,
    required this.images,
    required this.text,
  }) : super(key: key);

  final String images;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            images,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                Text(
                  text,
                  style: headingStyle,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididuntut labore et dolore magna aliqua. "
                      "Nunc eget lorem dolor sed." +
                      "Ultricies leo integer malesuada nunc vel risus commodo. Dis parturient montes nascetur "
                          "ridiculus mus mauris vitae ultricies leo. Elementum nisi quis eleifend quam adipiscing vitae. Proin fermentum"
                          " leo vel orci. Semper eget duis at tellus at urna condimentum.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                DefaultButton(
                    text: "Reserver maintenant               >", press: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}

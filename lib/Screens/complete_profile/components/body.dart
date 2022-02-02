
import 'package:e_commerce_app/constatnt.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              CompleteProfileFom(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                "By continuing ypur confirm that you agree \n with our Team and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
            ],
          ),
        ),
      ),
    );
  }
}

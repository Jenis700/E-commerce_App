import 'package:e_commerce_app/Screens/Sing%20Up/components/sing_up_form.dart';
import 'package:e_commerce_app/component/Social_Card.dart';
import 'package:e_commerce_app/constatnt.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

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
                "Register Account",
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Text(
                "Complete your dtails or continue \n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              SingUpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing our confirm that you agree \n with our Term and Condition",
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

import 'package:e_commerce_app/Screens/Home/home_screen.dart';
import 'package:e_commerce_app/Screens/Sign_in/Sing_in_screen.dart';
import 'package:e_commerce_app/Screens/World_App/HomeSreen.dart';
import 'package:e_commerce_app/component/default_button.dart';
import 'package:e_commerce_app/constatnt.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late SharedPreferences loginGetData;

  String? email;
  String? password;
  String? conformPassword;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginGetData = await SharedPreferences.getInstance();
    setState(() {
      email = loginGetData.getString("emailKey");
      password = loginGetData.getString("passwordKey");
      conformPassword = loginGetData.getString("conformPasswordKey");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: IntrinsicHeight(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.04),
            Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHeight! * 0.4,
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.08),
            Text(
              "Login Success",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.05),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.6,
              child: Column(
                children: [
                  DefaultButton(
                    text: "Welcome to the World",
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WorldHomeScreen(),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.05),
                  DefaultButton(
                    text: "Welcome to in App",
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BackButton(
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SingInScreen(),
                            ),
                          );
                        },
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.05),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

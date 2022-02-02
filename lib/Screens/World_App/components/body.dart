import 'package:e_commerce_app/Screens/World_App/components/CountryCardDetails.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constatnt.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 140,
              text: "Ile maurice",
              image: "assets/world/image2.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 200,
              text: "Japon",
              image: "assets/world/image3.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 170,
              text: "Espagne",
              image: "assets/world/image4.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 150,
              text: "New-york",
              image: "assets/world/images5.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 220,
              text: "Italie",
              image: "assets/world/images6.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 200,
              text: "France",
              image: "assets/world/images7.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 230,
              text: "India",
              image: "assets/world/images8.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 230,
              text: "India",
              image: "assets/world/images9.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 230,
              text: "India",
              image: "assets/world/images10.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 180,
              text: "Thailand",
              image: "assets/world/images11.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 180,
              text: "Thailand",
              image: "assets/world/images12.jpg",
            ),
            SizedBox(height: 20),
            CardOfCountrys(
              padRight: 190,
              text: "Maxique",
              image: "assets/world/maxico.jpg",
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CardOfCountrys extends StatelessWidget {
  const CardOfCountrys({
    Key? key,
    required this.image,
    required this.text,
    required this.padRight,
  }) : super(key: key);

  final String image;
  final String text;
  final double padRight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CardDetails(images: image, text: text))),
      child: Stack(
        children: [
          Container(
            height: 187,
            width: 400,
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 120, right: padRight),
            height: 187,
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.black.withOpacity(0.23),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

PreferredSize buildAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(80),
    child: Container(
      padding: const EdgeInsets.only(top: 16),
      child: AppBar(
        titleSpacing: 0,
        leading: Icon(
          Icons.search,
          color: kSecondaryColor,
        ),
        title: Text("Essayez une destination.."),
        elevation: 1,
      ),
    ),
  );
}

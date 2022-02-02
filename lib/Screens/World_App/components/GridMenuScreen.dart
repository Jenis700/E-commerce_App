import 'package:e_commerce_app/Screens/World_App/components/CountryCardDetails.dart';
import 'package:flutter/material.dart';

import '../../../constatnt.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: <Widget>[
          MenuScreenCard(
            images: "assets/world/image2.jpg",
            text: "Ile maurice",
          ),
          MenuScreenCard(
            images: "assets/world/image3.jpg",
            text: "Japon",
          ),
          MenuScreenCard(
            images: "assets/world/images7.jpg",
            text: "Espange",
          ),
          MenuScreenCard(
            images: "assets/world/image9.jpg",
            text: "New-york",
          ),
          MenuScreenCard(
            images: "assets/world/images8.jpg",
            text: "Italie",
          ),
          MenuScreenCard(
            images: "assets/world/images6.jpg",
            text: "France",
          ),
          MenuScreenCard(
            images: "assets/world/maxico.jpg",
            text: "India",
          ),
          MenuScreenCard(
            images: "assets/world/images5.jpg",
            text: "India",
          ),
          MenuScreenCard(
            images: "assets/world/images9.jpg",
            text: "India",
          ),
          MenuScreenCard(
            images: "assets/world/images10.jpg",
            text: "Thailend",
          ),
          MenuScreenCard(
            images: "assets/world/images11.jpg",
            text: "Thailend",
          ),
          MenuScreenCard(
            images: "assets/world/images12.jpg",
            text: "Maxique",
          ),
        ],
      ),
    );
  }
}

class MenuScreenCard extends StatelessWidget {
  const MenuScreenCard({
    Key? key,
    required this.images,
    required this.text,
  }) : super(key: key);

  final String images;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CardDetails(images: images, text: text),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                images,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(top: 100, left: 5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
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

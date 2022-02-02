import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final int id;
  final List<String> images;
  final List<Color> colors;
  final double price, rating;
  final bool isPopular;
  bool isFavorite = false;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    required this.description,
    required this.price,
    required this.title,
    this.isPopular = false,
    this.rating = 0.0,
  });
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0XFFF6625E),
      Color(0XFF836DB8),
      Color(0XFFDECB9C),
      Colors.white,
    ],
    description: description,
    price: 64.99,
    title: "Wireless Controller for PS4",
    rating: 4.8,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
      "assets/images/Image Popular Product 3.png",
      "assets/images/Image Popular Product 4.png",
      "assets/images/Image Popular Product 5.png",
    ],
    colors: [
      Color(0XFFF6625E),
      Color(0XFF836DB8),
      Color(0XFFDECB9C),
      Colors.white,
    ],
    description: description,
    price: 50.5,
    title: "Nike Sport White - Man Pant",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
      "assets/images/glap1.png",
      "assets/images/glap2.png",
      "assets/images/glap3.png",
    ],
    colors: [
      Color(0XFFF6625E),
      Color(0XFF836DB8),
      Color(0XFFDECB9C),
      Colors.white,
    ],
    description: description,
    price: 36.55,
    title: "Gloves XC Omega - Polygon",
    rating: 4.2,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset2.png",
      "assets/images/wireless headset4.png",
      "assets/images/wireless headset3.png",
      "assets/images/wireless headset6.png",
      "assets/images/wireless headset7.png",
    ],
    colors: [
      Color(0XFFF6625E),
      Color(0XFF836DB8),
      Color(0XFFDECB9C),
      Colors.white,
    ],
    description: description,
    price: 20.25,
    title: "Logitech Head",
    rating: 4.3,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

import 'package:flutter/material.dart';

class CartItems {
  final String name;
  final String catogery;
  final double price;
  final String image;
  final String desc;
  final String rate;
  final List<Color> color;
  final int rateing;

  CartItems({
    required this.name,
    required this.catogery,
    required this.price,
    required this.image,
    required this.desc,
    required this.rate,
    required this.color,
    required this.rateing,
  });
}

final List<CartItems> cartItems = [
  CartItems(
    name: "Brian Chair",
    catogery: "Chair",
    price: 12,
    image: "assets/chair1.png",
    rate: "4.5%",
    rateing: 170,
    color: [Colors.red, Colors.yellow, Colors.orange],
    desc:
        "The dining chair features a channel tufted back and seat with a solid American walnut or white oak frame.",
  ),
  CartItems(
    name: "Wood Chair",
    catogery: "Chair",
    price: 10,
    image: "assets/chair2.png",
     rate: "3.8%",
     rateing: 140,
     color: [Colors.red, Colors.yellow, Colors.orange],
    desc:
        "The dining chair features a channel tufted back and seat with a solid American walnut or white oak frame.",
  ),
  CartItems(
    name: "Cus Chair",
    catogery: "Chair",
    price: 34,
    image: "assets/chair3.png",
     rate: "4.2%",
     rateing: 1660,
     color: [Colors.red, Colors.yellow, Colors.orange],
    desc:
        "The dining chair features a channel tufted back and seat with a solid American walnut or white oak frame.",
  ),
  CartItems(
    name: "Plastic Chair",
    catogery: "Chair",
    price: 19,
    image: "assets/chair4.png",
     rate: "4.0%",
     rateing: 160,
     color: [Colors.red, Colors.yellow, Colors.orange],
    desc:
        "The dining chair features a channel tufted back and seat with a solid American walnut or white oak frame.",
  ),
];

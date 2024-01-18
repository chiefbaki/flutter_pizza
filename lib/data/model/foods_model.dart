import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesModel {
  final String label;
  final Icon img;
  CategoriesModel({required this.label, required this.img});
}

class CategoriesModelList {
  List<CategoriesModel> models = [
    CategoriesModel(
      label: "Burger",
      img: const Icon(FontAwesomeIcons.burger),
    ),
    CategoriesModel(
      label: "Pizza",
      img: const Icon(FontAwesomeIcons.pizzaSlice),
    ),
    CategoriesModel(
      label: "Drinks",
      img: const Icon(FontAwesomeIcons.wineGlass),
    ),
    CategoriesModel(
      label: "Ice-cream",
      img: const Icon(FontAwesomeIcons.iceCream),
    ),
    CategoriesModel(
      label: "Fish",
      img: const Icon(FontAwesomeIcons.fish),
    ),
  ];
}

class BurgersModel {
  final String img;
  final String label;
  final double price;

  BurgersModel({required this.img, required this.label, required this.price});
}

class BurgersModelList {
  List<BurgersModel> models = [
    BurgersModel(img: Images.menuBurger1, label: "Chicken Burger", price: 150),
    BurgersModel(img: Images.menuBurger2, label: "Chicken Burger", price: 200),
    BurgersModel(img: Images.menuBurger1, label: "Chicken Burger", price: 200),
    BurgersModel(img: Images.menuBurger2, label: "Chicken Burger", price: 200),
    BurgersModel(img: Images.menuBurger1, label: "Chicken Burger", price: 200),
  ];
}

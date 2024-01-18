import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesModel {
  final String label;
  final Icon img;
  CategoriesModel({required this.label, required this.img});
}

class CategoriesModelList{
  List<CategoriesModel> models = [
    CategoriesModel(label: "Burger", img: const Icon(FontAwesomeIcons.burger),),
    CategoriesModel(label: "Pizza", img: const Icon(FontAwesomeIcons.pizzaSlice),),
    CategoriesModel(label: "Drinks", img: const Icon(FontAwesomeIcons.wineGlass),),
    CategoriesModel(label: "Ice-cream", img: const Icon(FontAwesomeIcons.iceCream),),
    CategoriesModel(label: "Fish", img: const Icon(FontAwesomeIcons.fish),),
  ];
}
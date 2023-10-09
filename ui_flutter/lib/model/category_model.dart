
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CategoryModel {
  final String title;
  final IconData icon;
  final Color color;
  final Color colorIcon;

  const CategoryModel( {
    required this.title,
    required this.icon,
    required this.color,
    required this.colorIcon,
  });
}

List<CategoryModel> categoryList = [
  const CategoryModel(
    title: 'Offers',
    icon: Icons.local_offer,
    color: Colors.red,
    colorIcon: Colors.yellow,
  ),
  const CategoryModel(
    title: 'Chicken',
    icon: FontAwesomeIcons.drumstickBite,
    color: Colors.blue,
    colorIcon: Color.fromARGB(255, 233, 5, 138),
  ),
   const CategoryModel(
    title: 'Rice',
    icon: Icons.rice_bowl,
    color: Colors.green,
    colorIcon: Color.fromARGB(255, 245, 41, 5),
  ),
   const CategoryModel(
    title: 'Burger',
    icon: FontAwesomeIcons.hamburger,
    color: Colors.yellow,
    colorIcon: Color.fromARGB(255, 2, 141, 235),
  ),
   const CategoryModel(
    title: 'Pizza',
    icon:FontAwesomeIcons.pizzaSlice,
    color: Colors.orange,
    colorIcon: Color.fromARGB(255, 44, 43, 30),
  ),
   const CategoryModel(
    title: 'Coffee',
    icon: FontAwesomeIcons.coffee,
    color: Colors.purple,
    colorIcon: Color.fromARGB(255, 3, 233, 41),
  ),
   const CategoryModel(
    title: 'Boba Tea',
    icon: FontAwesomeIcons.glassMartiniAlt,
    color: Colors.pink,
    colorIcon: Color.fromARGB(255, 152, 235, 0),
  ),
   const CategoryModel(
    title: 'Salad',
    icon: Icons.local_dining,
    color: Colors.brown,
    colorIcon: Color.fromARGB(255, 81, 172, 247),
  ),
  
];

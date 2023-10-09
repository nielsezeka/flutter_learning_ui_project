import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/category_model.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.category,
  });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: category.color,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(
                category.icon,
                color: category.colorIcon,
                size: 30,
              )),
          const SizedBox(height: 10),
          Text(category.title, style: Styles.title1),
        ],
      ),
    );
  }
}

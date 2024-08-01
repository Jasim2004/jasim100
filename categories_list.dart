import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_products.dart';
import 'package:myapp/widgets/categories/category_item.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final List categories = [
{
      "name": "Naruto",
      "color": 0xFFE6F2EA,
      "image": "assets/images/category-items/icons8-anime (1).svg",
    },
    {
      "name": "Onepiece",
      "color": 0xFFFFE9E5,
      
      "image": "assets/images/category-items/icons8-anime (2).svg",
    },
    {
      "name": "Berserk",
      "color": 0xFFFFF6E3,
      "image": "assets/images/category-items/icons8-anime (3).svg",
    },
    {
      "name": "Vagabond",
      "color": 0xFFF3EFFA,
      "image": "assets/images/category-items/icons8-anime.svg",
    },
    {
      "name": "Nesuko",
      "color": 0xFFDCF4F5,
      "image": "assets/images/category-items/icons8-doraemon.svg",
    },
    {
      "name": "Dragon ball",
      "color": 0xFFFFE8F2,
      "image": "assets/images/category-items/icons8-tsunade.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = MediaQuery.of(context).size.width ~/ 120;

    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 21,
        horizontal: 16,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 120,
        crossAxisSpacing: 10,
        mainAxisSpacing: 14,
        crossAxisCount: crossAxisCount,
      ),
      itemCount: categories.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const ScreenProducts(),
              ),
            );
          },
          child: CategoryItem(
            label: categories[index]['name']! as String,
            image: categories[index]['image']! as String,
            bgColor: categories[index]['color']! as int,
          ),
        );
      },
    );
  }
}

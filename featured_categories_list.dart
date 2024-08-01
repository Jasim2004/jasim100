import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_products.dart';
import 'package:myapp/widgets/categories/featured_category_item.dart';

class FeaturedCategoriesList extends StatelessWidget {
  FeaturedCategoriesList({super.key});

  final List featuredCategories = [
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
    return SizedBox(
      height: 78,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 18,
          childAspectRatio: 1,
        ),
        itemCount: featuredCategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const ScreenProducts(),
                ),
              );
            },
            child: FeaturedCategoryItem(
              label: featuredCategories[index]['name']! as String,
              image: featuredCategories[index]['image']! as String,
              bgColor: featuredCategories[index]['color']! as int,
            ),
          );
        },
      ),
    );
  }
}

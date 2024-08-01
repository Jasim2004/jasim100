import 'package:flutter/material.dart';
import 'package:myapp/widgets/products/product_card_sm.dart';

class FavoritesProductsList extends StatelessWidget {
  FavoritesProductsList({super.key});

  final List<Map<String, String>> products = [
    {
      "name": "Feozen",
      "price": "899",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/1.jpeg",
      "isFavorite": "false",
      "cartQuantity": "1",
    },
    {
      "name": "One Piece",
      "price": "777",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/2.jpeg",
      "isFavorite": "true",
      "cartQuantity": "1",
    },
    {
      "name": "Black",
      "price": "899",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/3.jpeg",
      "isFavorite": "false",
      "cartQuantity": "1",
    },
    {
      "name": "Silent Voice",
      "price": "999",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/9.jpeg",
      "isFavorite": "false",
      "cartQuantity": "1",
    },
    {
      "name": "Boruto",
      "price": "899",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/11.jpeg",
      "isFavorite": "false",
      "cartQuantity": "1",
    },
    {
      "name": "Bleach",
      "price": "999",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/13.jpeg",
      "isFavorite": "false",
      "cartQuantity": "1",
    },
    {
      "name": "Death",
      "price": "1200",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/14.jpeg",
      "isFavorite": "false",
      "cartQuantity": "1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisExtent: 100,
        crossAxisSpacing: 8,
        mainAxisSpacing: 14,
        childAspectRatio: 1.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCardSm(
          name: products[index]["name"]!,
          price: products[index]["price"]!,
          quantity: products[index]["quantity"]!,
          image: products[index]["image"]!,
          cartQuantity: products[index]["cartQuantity"]!,
        );
      },
    );
  }
}

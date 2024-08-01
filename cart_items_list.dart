import 'package:flutter/material.dart';
import 'package:myapp/widgets/products/product_card_sm.dart';

class CartItemsList extends StatelessWidget {
  CartItemsList({super.key});

  final List<Map<String, String>> products = [
    {
      "name": "One Punch Man",
      "price": "599",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/4.jpeg",
      "cartQuantity": "1",
    },
    {
      "name": "Naruto Shirt",
      "price": "600",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/5.jpeg",
      "cartQuantity": "1",
    },
    {
      "name": "Naruto",
      "price": "1000",
      "quantity": "1",
      "image": "assets/images/auth-bg-images/6.jpeg",
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


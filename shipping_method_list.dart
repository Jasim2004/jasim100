import 'package:flutter/material.dart';
import 'package:myapp/widgets/checkout/shipping_method_card.dart';

class ShippingMethodList extends StatelessWidget {
  ShippingMethodList({super.key});

  final shippingMethods = [
    {
      "title": "Beginner",
      "description":
          "Order will be delivered between 8 - 10 business days straights to your doorstep.",
      "amount": "300"
    },
    {
      "title": "pro",
      "description":
          "Order will be delivered between 4 -7 business days straights to your doorstep.",
      "amount": "500"
    },
    {
      "title": "Kazhu Vezhi",
      "description":
          "Order will be delivered between 2 - 3 business days straights to your doorstep.",
      "amount": "800"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ShippingMethodCard(
          title: shippingMethods[index]["title"]!,
          description: shippingMethods[index]["description"]!,
          amount: shippingMethods[index]["amount"]!,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 18,
        );
      },
      itemCount: shippingMethods.length,
    );
  }
}

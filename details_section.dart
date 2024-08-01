import 'package:flutter/material.dart';
import 'package:myapp/screens/reviews/screen_review.dart';
import 'package:myapp/widgets/rating/rating.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$1000",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 109, 40, 213),
                ),
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFF868889),
                size: 20,
              ),
            ],
          ),
          const Text(
            "Naruto Shirt",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "1",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF868889),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const ScreenReview(),
                ),
              );
            },
            child: const Row(
              children: [
                Rating(),
                Text(
                  "(1002 Reviews)",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF868889),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Material: Soft, breathable fabrics for all-day comfort\n"
            "Styles: Available in a variety of styles including crew neck, V-neck, and polo.\n"
            "Colors: Wide range of colors to suit any preference.\n"
            "Prints: Options include solid colors, graphic prints, and logos.\n"
            "Fit: Designed for a flattering fit with sizes ranging from XS to XXL.\n"
            "Versatility: Perfect for casual wear, layering, or pairing with jeans and shorts.",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF868889),
            ),
          ),
        ],
      ),
    );
  }
}


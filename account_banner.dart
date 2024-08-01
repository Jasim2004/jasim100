import 'package:flutter/material.dart';

class AccountBanner extends StatelessWidget {
  const AccountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 145 - 114 / 2,
          ),
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: 145,
          ),
        ),
        const Positioned(
          top: 145 - 114 / 2,
          child: CircleAvatar(
            radius: 114 / 2,
            backgroundImage: NetworkImage(
              'assets/images/auth-bg-images/15.jpeg',
            ),
          ),
        ),
      ],
    );
  }
}

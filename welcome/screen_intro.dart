import 'package:flutter/material.dart';
import 'package:myapp/screens/auth/screen_welcome.dart';
import 'package:myapp/widgets/ui/buttons/primary_button.dart';

class ScreenIntro extends StatelessWidget {
  const ScreenIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icons/social-media-icons/monkey-d-luffy-9720x4320-16712.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  const Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      height: 50,
                      image: AssetImage(
                        'assets/icons/social-media-icons/text-1722489439134.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "FINAL     FLUTTER     PROJECT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22, // Increased font size
                      color: const Color.fromARGB(232, 0, 0, 0),
                      fontWeight: FontWeight.bold, // Optional: Make the text bold
                    ),
                  ),
                ],
              ),
              PrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenWelcome(),
                    ),
                  );
                },
                label: "Get started",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


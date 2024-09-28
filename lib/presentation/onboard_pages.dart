import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/Utils/constants.dart';
import 'package:flutter_grocery_ui/presentation/home_pages.dart';

import '../Widgets/bottom_nav_bar.dart';

class OnboardPages extends StatelessWidget {
  const OnboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: ClipPathOnBoard(),
            child: Container(
              color: onboardbackground,
              width: size.width,
              height: size.height * 0.5,
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Image.asset(
                  "assets/grocery/onboarding_profile.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.4,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Buy Groceries \n Easy with Us",
                  style: TextStyle(
                    fontSize: 40,
                    height: 1.3,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "lorem ipsum is simply dummy text of the printing and typesetting industry",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    //to homepage
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                    decoration: BoxDecoration(
                      color: textGreen,
                      borderRadius: BorderRadius.circular(50),
                      gradient: gradientColor,
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPathOnBoard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - 70,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

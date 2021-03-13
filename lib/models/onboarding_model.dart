import 'package:flutter/material.dart';

class Onboarding {
  final String title;
  final String description;
  final String imageURL;

  Onboarding({
    @required this.title,
    @required this.description,
    @required this.imageURL,
  });
}

final List<Onboarding> onboardingData = [
  Onboarding(
    title: "View product 360 degrees",
    description: "You can see the product with all angles, true and convenient",
    imageURL: "assets/images/onboarding1.svg",
  ),
  Onboarding(
    title: "Find products easily",
    description: "You just need to take a photo or upload and we will find similar products for you.",
    imageURL: "assets/images/onboarding2.svg",
  ),
  Onboarding(
    title: "Payment is easy",
    description: "You just need to take a photo or upload and we will find similar products for you.",
    imageURL: "assets/images/onboarding3.svg",
  )
];

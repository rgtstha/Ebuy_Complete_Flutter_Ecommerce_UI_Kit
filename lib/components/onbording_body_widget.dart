import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/onboarding_model.dart';

class OnboardingBodyPage extends StatelessWidget {
  final Onboarding onboarding;

  const OnboardingBodyPage({
    Key key,
    @required this.onboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              child: SvgPicture.asset(onboarding.imageURL),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  onboarding.title,
                  style: TextStyle(fontSize: 20.0, color: primaryColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                Text(
                  onboarding.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, color: secondaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

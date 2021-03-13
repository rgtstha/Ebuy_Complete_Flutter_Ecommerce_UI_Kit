import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/custom_button_widget.dart';
import '../components/indicator_widget.dart';
import '../components/onbording_body_widget.dart';
import '../models/onboarding_model.dart';
import 'signup_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 7,
                child: PageView.builder(
                  itemCount: onboardingData.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => OnboardingBodyPage(
                    onboarding: onboardingData[index],
                  ),
                  onPageChanged: (int pageIndex) => setState(() => currentPage = pageIndex),
                )),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Indicator>.generate(
                  onboardingData.length,
                  (int index) => Indicator(
                    index: index,
                    currentPage: currentPage,
                  ),
                ),
              ),
            ),
            CustomButton(
              title: "Get Started!",
              onTap: _buttonPressed,
            )
          ],
        ),
      ),
    );
  }

  _buttonPressed() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpPage()));
}

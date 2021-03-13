import 'package:flutter/material.dart';

import '../constants.dart';

class Indicator extends StatelessWidget {
  final index;
  final currentPage;
  const Indicator({
    Key key,
    @required this.index,
    @required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index ? buttonColor : secondaryColor,
      ),
    );
  }
}

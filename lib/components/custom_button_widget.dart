import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const CustomButton({
    Key key,
    @required this.title,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 44,
        color: buttonColor,
        onPressed: onTap,
        textColor: Colors.white,
        child: Text(title),
      ),
    );
  }
}

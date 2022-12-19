// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../helpers/styles.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({
    Key? key,
    this.radius = 19,
  }) : super(key: key);
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 40, height: 40),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: BorderSide(
                color: S.activeTextColor800(context),
                width: .8,
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: () => Navigator.pop(context),
        child: Icon(
          Icons.close_rounded,
          color: S.activeTextColor(context),
        ),
      ),
    );
  }
}

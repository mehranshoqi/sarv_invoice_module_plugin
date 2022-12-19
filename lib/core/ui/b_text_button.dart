// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../constants/global.dart';
import '../helpers/styles.dart';

class BTextButton extends StatelessWidget {
  BTextButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.disable = false,
    this.smaller = false,
  }) : super(key: key);
  final String label;
  bool disable, smaller;
  Function() onTap;

  @override
  // ignore: deprecated_member_use
  Widget build(BuildContext context) => ConstrainedBox(
        constraints:
            const BoxConstraints.tightFor(width: 100, height: G.bHeight),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
          onPressed: onTap,
          child: Text(
            label,
            style: S.t(context).bodyText1!.copyWith(
                  color: S.primary(context),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';

import '../helpers/styles.dart';

// ignore: must_be_immutable
class BContainer extends StatelessWidget {
  BContainer({
    Key? key,
    required this.child,
    this.h = 300,
    this.w = 300,
    this.width,
    this.height,
  }) : super(key: key);

  Widget child;
  double h, w;
  double? width, height;

  @override
  Widget build(BuildContext context) => Container(
        // constraints: BoxConstraints(minHeight: h, minWidth: w),
        // width: width ?? double.infinity,
        // height: height ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [S.boxShadow()],
        ),
        child: child,
      );
}

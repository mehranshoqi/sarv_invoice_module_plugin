import '../helpers/styles.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BLoading extends StatelessWidget {
  const BLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: LoadingAnimationWidget.horizontalRotatingDots(
          color: S.activeTextColor(context),
          size: 60,
        ),
      );
}

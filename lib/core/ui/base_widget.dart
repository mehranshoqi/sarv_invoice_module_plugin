import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

// ignore: must_be_immutable
class BaseWidget extends StatelessWidget {
  BaseWidget(this.child, {Key? key}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) => OKToast(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(body: SafeArea(child: _buildBody(context))),
        ),
      );

  Widget _buildBody(BuildContext context) => Stack(
        children: [
          Positioned.fill(child: child),
          // _debugBanner(context),
        ],
      );

  Widget _debugBanner(BuildContext context) => Container(
        width: 100,
        height: 24,
      );
}

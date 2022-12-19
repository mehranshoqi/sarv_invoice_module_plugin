import 'package:flutter/material.dart';

/// Theme Style Helper.
class S {
  /// Colors.
  static Color primary(BuildContext context) => Theme.of(context).primaryColor;
  static Color secondary(BuildContext context) => Theme.of(context).accentColor;

  /// Text Styles.
  static TextTheme t(BuildContext context) => Theme.of(context).textTheme;

  static Color activeTextColor(BuildContext context) =>
      S.t(context).bodyText1!.color!;

  static Color activeTextColor100(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.1);

  static Color activeTextColor200(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.2);

  static Color activeTextColor300(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.3);

  static Color activeTextColor400(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.4);

  static Color activeTextColor500(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.5);

  static Color activeTextColor600(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.6);

  static Color activeTextColor700(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.7);

  static Color activeTextColor800(BuildContext context) =>
      S.t(context).bodyText1!.color!.withOpacity(.8);

  static TextStyle h2Bold(BuildContext context) =>
      S.t(context).headline2!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle h4Bold(BuildContext context) =>
      S.t(context).headline4!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle h5Bold(BuildContext context) =>
      S.t(context).headline5!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle h6Bold(BuildContext context) =>
      S.t(context).headline6!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle bodyText1Bold(BuildContext context) =>
      S.t(context).bodyText1!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle bodyText2Bold(BuildContext context) =>
      S.t(context).bodyText2!.copyWith(fontWeight: FontWeight.w700);

  static TextStyle captionBold(BuildContext context) =>
      S.t(context).caption!.copyWith(fontWeight: FontWeight.w700);

  /// Decorations.
  static BoxShadow boxShadow() => BoxShadow(
        color: Colors.grey.shade300.withOpacity(.2),
        blurRadius: 22,
        spreadRadius: 6,
        offset: const Offset(-1, 1),
      );

  static BorderRadius boxRadius() => BorderRadius.circular(10);

  static BoxDecoration bContainerDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [S.boxShadow()],
      );

  static  bContainerPadding() =>
      const EdgeInsets.symmetric(horizontal: 22, vertical: 18);
}

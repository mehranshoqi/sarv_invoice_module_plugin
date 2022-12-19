import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../config/theme/colors.dart';
import '../constants/global.dart';
import '../helpers/styles.dart';

class BInput extends StatelessWidget {
  const BInput({
    Key? key,
    this.placeholder = '',
    this.hint = '',
    this.inputType = TextInputType.name,
    this.maxLength = 128,
    this.maxLine = 1,
    this.textAlign = TextAlign.center,
    this.width = 220,
    this.height = G.bHeight,
    this.smaller = false,
    this.multiLine = false,
    this.expanded = false,
    this.border = true,
    this.enabled = true,
    this.fillColor = AppColors.oSecondaryColor,
    required this.onChange,
    this.validator,
    this.initialValue = '',
    this.letterSpacing = 0,
    this.controller,
  }) : super(key: key);
  final String placeholder, hint;
  final TextInputType inputType;
  final int maxLength, maxLine;
  final bool multiLine, expanded, smaller, border, enabled;
  final double width, letterSpacing, height;
  final Color fillColor;
  final TextAlign textAlign;
  final Function(String t) onChange;
  final String initialValue;
  final String? Function(String? t)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) => expanded
      ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [Expanded(child: _input(context))],
        )
      : _input(context);

  Widget _input(BuildContext context) => Container(
        decoration: BoxDecoration(boxShadow: border ? [] : [S.boxShadow()]),
        width: width,
        height: smaller ? 38 : height,
        child: TextFormField(
          controller: controller,
          // initialValue: initialValue,
          enabled: enabled,
          style: smaller ? S.t(context).bodyText2 : S.t(context).bodyText2,
          maxLines: 10,
          onChanged: onChange,
          textAlign: textAlign,
          validator: validator,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
            labelText: placeholder,
            hintText: hint,
            labelStyle: S.t(context).bodyText2!.copyWith(
                  color: S.activeTextColor600(context),
                  letterSpacing: letterSpacing,
                ),
            filled: true,
            fillColor: !border ? fillColor : fillColor.withOpacity(.05),
            counterText: '',
            enabledBorder: _baseBorderStyle(
                AppColors.oPrimaryColor.withOpacity(border ? .2 : 0)),
            focusedBorder: _baseBorderStyle(
                S.primary(context).withOpacity(border ? 1 : 0)),
          ),
          keyboardType: inputType,
          maxLength: maxLength,
          cursorColor: S.primary(context),
          cursorHeight: 22,
          cursorRadius: Radius.circular(smaller ? 2 : 4),
          cursorWidth: 1.25,
        ),
      );

  OutlineInputBorder _baseBorderStyle(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(smaller ? 11 : 10),
        borderSide: BorderSide(color: color),
      );
}

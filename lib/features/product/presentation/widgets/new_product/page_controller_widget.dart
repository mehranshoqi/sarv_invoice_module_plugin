import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/config/theme/colors.dart';
import '../../../../../core/constants/global.dart';
import '../../../../../core/helpers/styles.dart';

class PageControllerWidget extends StatelessWidget {
  const PageControllerWidget({
    Key? key,
    required this.nextPage,
    required this.prevPage,
    required this.activePageIndex,
  }) : super(key: key);
  final Function() nextPage, prevPage;
  final int activePageIndex;

  @override
  Widget build(BuildContext context) => Container(
        width: 256,
        height: double.infinity,
        // color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 260),
                opacity: (activePageIndex != 0) ? 1 : 0,
                child: _button(context, prevPage, Icons.keyboard_arrow_up),
              ),
              SizedBox(height: 8.w),
              _title(context),
              SizedBox(height: 8.w),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 260),
                opacity: (activePageIndex != 1) ? 1 : 0,
                child: _button(context, nextPage, Icons.keyboard_arrow_down),
              ),
            ],
          ),
        ),
      );

  Widget _button(BuildContext context, Function() onTap, IconData icon) =>
      // ignore: deprecated_member_use
      ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 86, height: 86),
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(
              S.activeTextColor100(context).withOpacity(.03),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000),
                side: BorderSide(
                  color: AppColors.oPrimaryColor.withOpacity(.4),
                  width: .4,
                ),
              ),
            ),
          ),
          child: Icon(icon, color: AppColors.oPrimaryColor, size: 40),
        ),
      );

  Widget _title(BuildContext context) => Text(
        G.newProductSteps[activePageIndex],
        style: S.t(context).headline1!.copyWith(fontWeight: FontWeight.w900),
      );
}

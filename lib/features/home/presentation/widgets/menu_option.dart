import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../../core/entities/side_menu/side_menu_option.dart';
import '../../../../core/entities/side_menu/side_menu_sub_option.dart';
import '../../../../core/helpers/styles.dart';

class HomeSideMenuOptionWidget extends StatelessWidget {
  HomeSideMenuOptionWidget({
    required this.menuOption,
    required this.onSelectSubOption,
    Key? key,
    // required this.option,
    // required this.selected,
    // required this.onTap,
    // this.bgColor,
    // this.fgColor,
  }) : super(key: key);
  final Function(SideMenuSubOption option) onSelectSubOption;
  // final HomeSideMenuOption option;
  // final bool selected;
  // final Color? bgColor, fgColor;
  SideMenuOption menuOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: GestureDetector(
        // onTap: () => onTap(option),
        child: Container(
          decoration: BoxDecoration(
            // color: bgColor ??
            //     (selected ? AppColors.oSecondaryColor : Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: _option(context),
        ),
      ),
    );
  }

  Widget _option(BuildContext context) => ExpandableNotifier(
        child: ScrollOnExpand(
          scrollOnExpand: true,
          scrollOnCollapse: false,
          child: ExpandablePanel(
            theme: ExpandableThemeData(
              headerAlignment: ExpandablePanelHeaderAlignment.center,
              tapBodyToCollapse: true,
              iconColor: S.activeTextColor800(context),
              iconSize: 18,
              iconPadding: EdgeInsets.zero,
            ),
            header: _optionHeader(context, menuOption),
            collapsed: const SizedBox(),
            expanded: Column(
              children: [
                const SizedBox(height: 10),
                for (SideMenuSubOption subOption in menuOption.options)
                  _subOption(context, subOption),
              ],
            ), //
            builder: (_, collapsed, expanded) => Expandable(
              collapsed: collapsed,
              expanded: expanded,
            ),
          ),
        ),
      );

  Widget _subOption(BuildContext context, SideMenuSubOption subOption) =>
      InkWell(
        onTap: () => onSelectSubOption(subOption),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 1),
          alignment: Alignment.centerRight,
          child: Text(
            subOption.label,
            style: S
                .t(context)
                .bodyText2!
                .copyWith(color: S.activeTextColor800(context)),
          ),
        ),
      );

  Widget _optionHeader(BuildContext context, SideMenuOption menuOption) => Row(
        children: [
          Icon(
            menuOption.icon,
            size: 21,
            color: S.activeTextColor(context),
          ),
          const SizedBox(width: 14),
          Text(
            menuOption.label,
            style: S.t(context).bodyText1!.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
        ],
      );
}

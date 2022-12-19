// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:sizer/sizer.dart';

// import '../../../../core/config/theme/colors.dart';
// import '../../../../core/constants/enums.dart';
// import '../../../../core/constants/global.dart';
// import '../../../../core/entities/home_side_menu_option_deprecated.dart';
// import '../../../../core/helpers/styles.dart';
// import '../../../setting/presentation/widget/setting_modal.dart';
// import '../../../shops/domain/entities/create_store/response/store/store.dart';
// import 'menu_option.dart';

// class HomeSideMenu extends StatelessWidget {
//   const HomeSideMenu({
//     Key? key,
//     required this.selectedSideMenuOption,
//     required this.updateSelectedSideMenuOption,
//     required this.store,
//   }) : super(key: key);
//   final HomeSideMenuOption selectedSideMenuOption;
//   final Function(HomeSideMenuOption option) updateSelectedSideMenuOption;
//   final Store store;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 290,
//       height: 100.h,
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border(
      //     left: BorderSide(
      //       width: .25,
      //       color: S.activeTextColor200(context),
      //     ),
      //   ),
      // ),
//       child: Column(
//         children: [
//           SizedBox(height: 5.h),
//           _backButton(context),
//           SizedBox(height: 3.h),
//           _title(context),
//           const SizedBox(height: 2),
//           _todayDate(context),
//           const SizedBox(height: 4),
//           Divider(
//             indent: 30,
//             endIndent: 40,
//             color: S.activeTextColor200(context),
//           ),
//           // _options(context),
//         ],
//       ),
//     );
//   }

//   Widget _title(BuildContext context) => Align(
//         alignment: Alignment.centerRight,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Text(
//             store.name,
//             style: S.h4Bold(context).copyWith(fontWeight: FontWeight.w900),
//           ),
//         ),
//       );

//   // Widget _options(BuildContext context) => Expanded(
//   //       child: ListView(
//   //         children: [
//   //           for (HomeSideMenuOption option in G.homeSideMenuOptions)
//   //             HomeSideMenuOptionWidget(
//   //               option: option,
//   //               selected: option == selectedSideMenuOption,
//   //               onTap: updateSelectedSideMenuOption,
//   //             ),
//   //           SizedBox(height: 7.h),
//   //           HomeSideMenuOptionWidget(
//   //             option: const HomeSideMenuOption(
//   //               icon: Iconsax.setting_2,
//   //               label: 'تنظیمات',
//   //               option: HomeSideMenuOptions.setting,
//   //               child: SizedBox(),
//   //               isMainOption: true,
//   //             ),
//   //             selected: true,
//   //             onTap: (_) => showSettingModal(context),
//   //             fgColor: S.primary(context),
//   //             bgColor: AppColors.oSecondaryColor,
//   //           ),
//   //           const SizedBox(height: 32),
//   //         ],
//   //       ),
//   //     );

//   void showSettingModal(BuildContext context) => showMaterialModalBottomSheet(
//         context: context,
//         builder: (context) => SettingModal(),
//       );

//   Widget _todayDate(BuildContext context) => Align(
//         alignment: Alignment.centerRight,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Text(
//             '23  شهریور  1401 ', // Todo
//             style: S
//                 .t(context)
//                 .bodyText2!
//                 .copyWith(color: S.activeTextColor500(context)),
//           ),
//         ),
//       );

//   Widget _backButton(BuildContext context) => Align(
//         alignment: Alignment.centerRight,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: FlatButton(
//             minWidth: 56,
//             height: 56,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(100)),
//             color: S.activeTextColor100(context),
//             onPressed: () {},
//             child: Icon(
//               Icons.keyboard_arrow_right_rounded,
//               size: 28,
//             ),
//           ),
//         ),
//       );
// }

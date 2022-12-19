// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// import '../../../../core/constants/global.dart';
// import '../../../../core/entities/side_menu/side_menu_option.dart';
// import '../../../../core/entities/side_menu/side_menu_sub_option.dart';
// import '../../../../core/helpers/assets.dart';
// import '../../../../core/helpers/styles.dart';
// import '../../../shops/domain/entities/create_store/response/store/store.dart';
// import 'menu_option.dart';

// class HomeSideMenu extends StatelessWidget {
//   const HomeSideMenu({
//     required this.store,
//     required this.onSelectSubOption,
//     Key? key,
//   }) : super(key: key);

//   final Function(SideMenuSubOption subOption) onSelectSubOption;
//   final Store store;

//   @override
//   Widget build(BuildContext context) => Container(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         decoration: BoxDecoration(
//           image: const DecorationImage(
//             image: AssetImage(Assets.dotBg),
//             fit: BoxFit.cover,
//             opacity: 0,
//           ),
//           color: Colors.white,
//           border: Border(
//             left: BorderSide(
//               width: .25,
//               color: S.activeTextColor200(context),
//             ),
//           ),
//         ),
//         width: 290,
//         height: 100.h,
//         child: Column(
//           children: [
//             SizedBox(height: 5.h),
//             _backButton(context),
//             SizedBox(height: 3.h),
//             _title(context),
//             const SizedBox(height: 2),
//             _todayDate(context),
//             const SizedBox(height: 32),
//             _options(context)
//           ],
//         ),
//       );

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
//           child: ConstrainedBox(
//             constraints: const BoxConstraints.tightFor(width: 56, height: 56),
//             child: ElevatedButton(
//               style: ButtonStyle(
//                 padding: MaterialStateProperty.all(EdgeInsets.zero),
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   S.activeTextColor100(context),
//                 ),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                 ),
//               ),
//               onPressed: () => Navigator.pop(context),
//               child: const Icon(
//                 Icons.keyboard_arrow_right_rounded,
//                 size: 28,
//               ),
//             ),
//           ),
//         ),
//       );

//   Widget _menuOption(BuildContext context, SideMenuOption menuOption) {
//     return HomeSideMenuOptionWidget(
//       menuOption: menuOption,
//       onSelectSubOption: onSelectSubOption,
//     );
//   }

//   Widget _options(BuildContext context) => Expanded(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               for (SideMenuOption menuOption in G.homeSideMenuOptions)
//                 _menuOption(context, menuOption),
//             ],
//           ),
//         ),
//       );
// }

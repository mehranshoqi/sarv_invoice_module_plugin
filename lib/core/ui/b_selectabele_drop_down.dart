// import 'package:book/core/helpers/styles.dart';
// import 'package:flutter/material.dart';

// class BSelectableDropDown extends StatelessWidget {
//   const BSelectableDropDown({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => AbsorbPointer(
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: S.activeTextColor100(context),
//           ),
//           width: 220,
//           height: 320,
//           child: ListView(
//             children: [
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//               _singleValue(context),
//             ],
//           ),
//         ),
//       );

//   Widget _singleValue(BuildContext context) {
//     return GestureDetector(
//       behavior: HitTestBehavior.translucent,
//       onTap: () {
//         print('print();');
//       },
//       child: AbsorbPointer(
//         child: Container(
//           margin: const EdgeInsets.symmetric(horizontal: 12),
//           width: double.infinity,
//           padding: const EdgeInsets.all(2),
//           decoration: BoxDecoration(
//             border: Border(
//               bottom: BorderSide(color: S.activeTextColor100(context)),
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(6),
//             child: Text('value'),
//           ),
//         ),
//       ),
//     );
//   }
// }

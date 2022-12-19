// import 'package:book/features/product/presentation/widgets/new_product/product_type/select_product_type.dart';
// import 'package:flutter/material.dart';

// import '../../../domain/entities/create_product_type/response/product_type/product_type.dart';

// // ignore: must_be_immutable
// class TypeBookProfileContainer extends StatelessWidget {
//   TypeBookProfileContainer({
//     Key? key,
//     required this.nextPage,
//     required this.selectedProductType,
//   }) : super(key: key);

//   final PageController _pageController = PageController(initialPage: 0);
//   final Function(ProductType selectedProductType) nextPage;
//   ProductType? selectedProductType;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.pink,
//       child: PageView(
//         controller: _pageController,
//         children: [
//           SelectProductType(
//             nextPage: (selectedType) => selectedType.enumValue == 'book'
//                 ? _nextPage()
//                 : nextPage(selectedType),
//             selectedProductType: selectedProductType,
//             showBookProfile: _nextPage,
//           ),
//           Text('book profile'),
//         ],
//       ),
//     );
//   }

//   void _nextPage() => _pageController.nextPage(
//       duration: const Duration(milliseconds: 280), curve: Curves.easeInOut);

//   void _prevPage() => _pageController.previousPage(
//       duration: const Duration(milliseconds: 240), curve: Curves.easeInOut);
// }

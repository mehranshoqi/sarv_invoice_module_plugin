// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../../core/helpers/styles.dart';
// import '../../../../../../core/injection/di.dart';
// import '../../../../../../core/ui/b_input.dart';
// import '../../../../../../core/ui/b_loading.dart';
// import '../../../../../../core/ui/b_toast.dart';
// import '../../../../../../core/usecases/usecases.dart';
// import '../../../../domain/entities/create_warehouse/response/warehouse/warehouse.dart';
// import '../../../controllers/get_warehouses/cubit.dart';
// import '../../../controllers/get_warehouses/state.dart';
// import 'new_warehouse_form.dart';
// import 'single_warehouse.dart';

// class ProductWarehouse extends StatefulWidget {
//   const ProductWarehouse({
//     Key? key,
//     required this.nextPage,
//     required this.prevPage,
//   }) : super(key: key);

//   final Function() nextPage, prevPage;

//   @override
//   State<ProductWarehouse> createState() => _ProductWarehouseState();
// }

// class _ProductWarehouseState extends State<ProductWarehouse> {
//   List<Warehouse> _warehousesList = [];
//   late GetWarehousesCubit _getWarehousesCubit;

//   @override
//   void initState() {
//     super.initState();
//     _getWarehousesCubit = sl<GetWarehousesCubit>();
//   }

//   @override
//   Widget build(BuildContext context) => Row(
//         children: [
//           const SizedBox(width: 16),
//           _warehouses(context),
//           const SizedBox(width: 32),
//           const VerticalDivider(indent: 80, endIndent: 80),
//           const SizedBox(width: 16),
//           _shelfAndAisle(context),
//         ],
//       );

//   Widget _warehouses(BuildContext context) => Expanded(
//         flex: 2,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const SizedBox(height: 48),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 'انبار محل نگهداری',
//                 style: S.h6Bold(context),
//               ),
//             ),
//             const SizedBox(height: 28),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: BlocProvider(
//                   create: (context) =>
//                       _getWarehousesCubit..getWarehousesF(NoParams()),
//                   child: BlocConsumer<GetWarehousesCubit, GetWarehousesState>(
//                     listener: (context, state) => state.maybeWhen(
//                       orElse: () => null,
//                       error: (err) => BToast.success(err.errorReason!.first),
//                       done: (res) =>
//                           setState(() => _warehousesList = res.data!.items),
//                     ),
//                     builder: (context, state) => state.maybeWhen(
//                       orElse: () => const BLoading(),
//                       done: (res) => Wrap(
//                         crossAxisAlignment: WrapCrossAlignment.center,
//                         spacing: 36,
//                         runSpacing: 20,
//                         children: [
//                           // for (Warehouse warehouse in _warehousesList)
//                           //   SingleWarehouse(warehouse),
//                           _createNewWarehouseButton(context),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );

//   Widget _shelfAndAisle(BuildContext context) => Expanded(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Spacer(flex: 3),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Text('قفسه', style: S.h6Bold(context)),
//               ),
//               const SizedBox(height: 14),
//               BInput(
//                 onChange: (t) {},
//                 placeholder: 'شماره قفسه',
//                 expanded: true,
//               ),
//               const Spacer(),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Text('راهرو', style: S.h6Bold(context)),
//               ),
//               const SizedBox(height: 14),
//               BInput(
//                 onChange: (t) {},
//                 placeholder: 'شماره راهرو',
//                 expanded: true,
//               ),
//               const Spacer(flex: 4),
//             ],
//           ),
//         ),
//       );

//   Widget _createNewWarehouseButton(BuildContext context) => FlatButton(
//         color: S.activeTextColor(context).withOpacity(.03),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(32),
//           side: BorderSide(width: .8, color: S.activeTextColor300(context)),
//         ),
//         minWidth: 110,
//         height: 110,
//         padding: EdgeInsets.zero,
//         onPressed: () => _showNewWarehouseForm(context),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const SizedBox(height: 6),
//             Text(
//               'انبار جدید',
//               style: S.t(context).caption!.copyWith(
//                   fontWeight: FontWeight.bold,
//                   color: S.activeTextColor800(context)),
//             ),
//             const SizedBox(height: 2),
//             Icon(
//               Icons.add,
//               color: S.activeTextColor700(context),
//               size: 15,
//             ),
//           ],
//         ),
//       );

//   _showNewWarehouseForm(BuildContext context) => showDialog(
//         context: context,
//         builder: (BuildContext context) => NewWarehouseForm(
//           onCreateNewWarehouse: (newWarehouse) {},
//         ),
//       );
// }

// import '../../../../core/ui/b_loading.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../core/helpers/styles.dart';
// import '../../../../core/injection/di.dart';
// import '../../../../core/ui/b_list_row_item.dart';
// import '../../../../core/ui/b_text_button.dart';
// import '../../../../core/ui/b_toast.dart';
// import '../../../../core/usecases/usecases.dart';
// import '../../domain/entities/create_products_album/response/products_album/products_album.dart';
// import '../controllers/get_albums/cubit.dart';
// import '../controllers/get_albums/state.dart';
// import '../widgets/albums/new_album_form.dart';

// class AlbumsPage extends StatefulWidget {
//   const AlbumsPage({
//     required this.onSelectAlbum,
//     Key? key,
//   }) : super(key: key);
//   final Function(ProductsAlbum selectedAlbum) onSelectAlbum;

//   @override
//   State<AlbumsPage> createState() => _AlbumsPageState();
// }

// class _AlbumsPageState extends State<AlbumsPage> {
//   late GetAlbumsCubit _getAlbumsCubit;
//   List<ProductsAlbum> _albums = [];
//   ProductsAlbum? _selectedAlbum;

//   @override
//   void initState() {
//     _getAlbumsCubit = sl<GetAlbumsCubit>();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) => Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             const SizedBox(height: 24),
//             Row(
//               children: [
//                 Text(
//                   'آلبوم ها',
//                   style: S
//                       .t(context)
//                       .headline5!
//                       .copyWith(fontWeight: FontWeight.w900),
//                 ),
//                 const Spacer(),
//                 BTextButton(
//                   label: '+ تعریف آلبوم جدید',
//                   onTap: () => _showNewAlbumForm(context),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 32),
//             _customersGroupsList(context),
//           ],
//         ),
//       );

//   Widget _customersGroupsList(BuildContext context) => Expanded(
//         child: SingleChildScrollView(
//           child: BlocProvider(
//             create: (context) => _getAlbumsCubit..getAlbumsF(NoParams()),
//             child: BlocConsumer<GetAlbumsCubit, GetAlbumsState>(
//               listener: (context, state) => state.maybeWhen(
//                 orElse: () => null,
//                 done: (res) => setState(() => _albums = res.data!.albums),
//                 error: (err) => BToast.success(err.errorReason!.first),
//               ),
//               builder: (context, state) => state.maybeWhen(
//                 orElse: () => const BLoading(),
//                 done: (res) => Column(
//                   children: [
//                     for (ProductsAlbum album in _albums)
//                       Container(
//                         color: _selectedAlbum?.id == album.id
//                             ? S.primary(context).withOpacity(.06)
//                             : Colors.transparent,
//                         child: BRowListItem(
//                           child: Expanded(
//                             child: Row(
//                               children: [
//                                 Text(album.name),
//                                 const Spacer(),
//                               ],
//                             ),
//                           ),
//                           onTap: () {
//                             setState(() => _selectedAlbum = album);
//                             widget.onSelectAlbum(album);
//                           },
//                           index: _albums.indexOf(album),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );

//   void _showNewAlbumForm(BuildContext context) => showDialog(
//         context: context,
//         builder: (_) => NewAlbumForm(
//           onCreateNewAlbum: (newAlbum) => setState(() => _albums.add(newAlbum)),
//         ),
//       );
// }

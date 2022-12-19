import 'package:flutter/material.dart';

import '../../../../domain/entities/create_products_album/response/products_album/products_album.dart';
import '../../../pages/albums.dart';

class SelectProductsAlbum extends StatelessWidget {
  const SelectProductsAlbum({
    Key? key,
    required this.onSelectAlbum,
  }) : super(key: key);
  final Function(ProductsAlbum selectedAlbum) onSelectAlbum;

  @override
  Widget build(BuildContext context) => Container();
  // AlbumsPage(onSelectAlbum: onSelectAlbum);
}

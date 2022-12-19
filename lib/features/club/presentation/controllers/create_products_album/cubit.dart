import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_products_album/params/params.dart';
import '../../../domain/usecases/create_products_album.dart';
import 'state.dart';

@injectable
class CreateProductsAlbumCubit extends BaseCubit<CreateProductsAlbumState> {
  CreateProductsAlbumCubit({
    required this.createProductsAlbum,
  }) : super(const CreateProductsAlbumState.initial());

  final CreateProductsAlbum createProductsAlbum;

  Future<void> createProductsAlbumF(CreateProductsAlbumParams params) async {
    emit(const CreateProductsAlbumState.loading());

    final result = await createProductsAlbum(params);

    result.fold(
      (failure) => emit(CreateProductsAlbumState.error(failure)),
      (response) => emit(CreateProductsAlbumState.done(response)),
    );
  }
}

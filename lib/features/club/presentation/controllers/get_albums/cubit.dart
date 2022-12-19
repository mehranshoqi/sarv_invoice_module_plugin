import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_albums.dart';
import 'state.dart';

@injectable
class GetAlbumsCubitt extends BaseCubit<GetAlbumsState> {
  GetAlbumsCubitt({
    required this.getAlbums,
  }) : super(const GetAlbumsState.initial());

  final GetAlbums getAlbums;

  Future<void> getAlbumsF(NoParams params) async {
    emit(const GetAlbumsState.loading());

    final result = await getAlbums(params);

    result.fold(
      (failure) => emit(GetAlbumsState.error(failure)),
      (response) => emit(GetAlbumsState.done(response)),
    );
  }
}

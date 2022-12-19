import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_stores.dart';
import 'state.dart';

@injectable
class GetStoresCubit extends BaseCubit<GetStoresState> {
  GetStoresCubit({
    required this.getStores,
  }) : super(const GetStoresState.initial());

  final GetStores getStores;

  Future<void> getStoresF(NoParams params) async {
    emit(const GetStoresState.loading());

    final result = await getStores(params);

    result.fold(
      (failure) => emit(GetStoresState.error(failure)),
      (response) => emit(GetStoresState.done(response)),
    );
  }
}

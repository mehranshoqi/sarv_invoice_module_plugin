import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_store/param/create_store_param.dart';
import '../../../domain/usecases/create_store.dart';
import 'state.dart';

@injectable
class CreateStoreCubit extends BaseCubit<CreateStoreState> {
  CreateStoreCubit({
    required this.createStore,
  }) : super(const CreateStoreState.initial());

  final CreateStores createStore;

  Future<void> createStoreF(CreateStoreParams params) async {
    emit(const CreateStoreState.loading());

    final result = await createStore(params);

    result.fold(
      (failure) => emit(CreateStoreState.error(failure)),
      (response) => emit(CreateStoreState.done(response)),
    );
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_product_types.dart';
import 'state.dart';

@injectable
class GetProductTypesCubit extends BaseCubit<GetProductTypesState> {
  GetProductTypesCubit({
    required this.getProductTypes,
  }) : super(const GetProductTypesState.initial());

  final GetProductTypes getProductTypes;

  Future<void> getProductTypesF(NoParams params) async {
    emit(const GetProductTypesState.loading());

    final result = await getProductTypes(params);

    result.fold(
      (failure) => emit(GetProductTypesState.error(failure)),
      (response) => emit(GetProductTypesState.done(response)),
    );
  }
}

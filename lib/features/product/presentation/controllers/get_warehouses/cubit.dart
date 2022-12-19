import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_warehouses.dart';
import 'state.dart';

@injectable
class GetWarehousesCubit extends BaseCubit<GetWarehousesState> {
  GetWarehousesCubit({
    required this.getWarehouses,
  }) : super(const GetWarehousesState.initial());

  final GetWarehouses getWarehouses;

  Future<void> getWarehousesF(NoParams params) async {
    emit(const GetWarehousesState.loading());

    final result = await getWarehouses(params);

    result.fold(
      (failure) => emit(GetWarehousesState.error(failure)),
      (response) => emit(GetWarehousesState.done(response)),
    );
  }
}

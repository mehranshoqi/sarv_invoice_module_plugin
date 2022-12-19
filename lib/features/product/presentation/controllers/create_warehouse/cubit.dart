import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_warehouse/params/params.dart';
import '../../../domain/usecases/create_warehouse.dart';
import 'state.dart';

@injectable
class CReateWarehouseCubit extends BaseCubit<CreateWarehouseState> {
  CReateWarehouseCubit({
    required this.createWarehouse,
  }) : super(const CreateWarehouseState.initial());

  final CreateWarehouse createWarehouse;

  Future<void> createWarehouseFP(CreateWarehouseParams params) async {
    emit(const CreateWarehouseState.loading());

    final result = await createWarehouse(params);

    result.fold(
      (failure) => emit(CreateWarehouseState.error(failure)),
      (response) => emit(CreateWarehouseState.done(response)),
    );
  }
}

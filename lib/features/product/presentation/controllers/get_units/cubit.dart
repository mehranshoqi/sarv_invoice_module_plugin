import '../../../domain/usecases/get_units.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_warehouses.dart';
import 'state.dart';

@injectable
class GetUnitsCubit extends BaseCubit<GetUnitsState> {
  GetUnitsCubit({
    required this.getUnits,
  }) : super(const GetUnitsState.initial());

  final GetUnits getUnits;

  Future<void> getUnitsF(NoParams params) async {
    emit(const GetUnitsState.loading());

    final result = await getUnits(params);

    result.fold(
      (failure) => emit(GetUnitsState.error(failure)),
      (response) => emit(GetUnitsState.done(response)),
    );
  }
}

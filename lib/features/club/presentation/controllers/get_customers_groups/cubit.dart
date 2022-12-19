import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_customers_groups.dart';
import 'state.dart';

@injectable
class GetCustomersGroupsCubit extends BaseCubit<GetCustomersGroupsState> {
  GetCustomersGroupsCubit({
    required this.getCustomersGroups,
  }) : super(const GetCustomersGroupsState.initial());

  final GetCustomersGroups getCustomersGroups;

  Future<void> getCustomersGroupsF(NoParams params) async {
    emit(const GetCustomersGroupsState.loading());

    final result = await getCustomersGroups(params);

    result.fold(
      (failure) => emit(GetCustomersGroupsState.error(failure)),
      (response) => emit(GetCustomersGroupsState.done(response)),
    );
  }
}

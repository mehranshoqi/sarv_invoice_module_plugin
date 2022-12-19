import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_customers.dart';
import 'state.dart';

@injectable
class GetCustomersCubit extends BaseCubit<GetCustomersState> {
  GetCustomersCubit({
    required this.getCustomers,
  }) : super(const GetCustomersState.initial());

  final GetCustomers getCustomers;

  Future<void> getCustomersF(NoParams params) async {
    emit(const GetCustomersState.loading());

    final result = await getCustomers(params);

    result.fold(
      (failure) => emit(GetCustomersState.error(failure)),
      (response) => emit(GetCustomersState.done(response)),
    );
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/create_customers_group/params/params.dart';
import '../../../domain/usecases/create_customers_group.dart';
import 'state.dart';

@injectable
class CreateCustomersGroupCubit extends BaseCubit<CreateCustomersGroupState> {
  CreateCustomersGroupCubit({
    required this.createCustomersGroup,
  }) : super(const CreateCustomersGroupState.initial());

  final CreateCustomersGroup createCustomersGroup;

  Future<void> createCustomersGroupF(CreateCustomersGroupParams params) async {
    emit(const CreateCustomersGroupState.loading());

    final result = await createCustomersGroup(params);

    result.fold(
      (failure) => emit(CreateCustomersGroupState.error(failure)),
      (response) => emit(CreateCustomersGroupState.done(response)),
    );
  }
}

import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/send_name/param/send_name_param.dart';
import '../../../domain/usecase/send_name.dart';
import 'state.dart';

@injectable
class SendNameCubit extends BaseCubit<SendNameState> {
  SendNameCubit({
    required this.sendName,
  }) : super(const SendNameState.initial());

  final SendName sendName;

  Future<void> sendNameF(SendNameParams params) async {
    emit(const SendNameState.loading());

    final result = await sendName(params);

    result.fold(
      (failure) => emit(SendNameState.error(failure)),
      (response) => emit(SendNameState.done(response)),
    );
  }
}

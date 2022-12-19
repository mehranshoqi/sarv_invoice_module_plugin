import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/send_phone/param/send_phone_number.dart';
import '../../../domain/usecase/send_phone.dart';
import 'state.dart';



@injectable
class SendPhoneNumberCubit extends BaseCubit<SendPhoneNumberState> {
  SendPhoneNumberCubit({
    required this.sendPhoneNumber,
  }) : super(const SendPhoneNumberState.initial());

  final SendPhoneNumber sendPhoneNumber;

  Future<void> sendPhone(SendPhoneNumberParams params) async {
    emit(const SendPhoneNumberState.loading());

    final result = await sendPhoneNumber(params);

    result.fold(
      (failure) => emit(SendPhoneNumberState.error(failure)),
      (response) => emit(SendPhoneNumberState.done(response)),
    );
  }
}

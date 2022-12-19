import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/bloc_cubit.dart';
import '../../../domain/entities/get_invoice_discount/params/params.dart';
import '../../../domain/usecases/get_invoice_discounts.dart';
import 'state.dart';

@injectable
class GetInvoiceDiscountsCubit extends BaseCubit<GetInvoiceDiscountsState> {
  GetInvoiceDiscountsCubit({
    required this.getInvoiceDiscounts,
  }) : super(const GetInvoiceDiscountsState.initial());

  final GetInvoiceDiscounts getInvoiceDiscounts;

  Future<void> getInvoiceDiscountsF(GetInvoiceDiscountParams params) async {
    emit(const GetInvoiceDiscountsState.loading());

    final result = await getInvoiceDiscounts(params);

    result.fold(
      (failure) => emit(GetInvoiceDiscountsState.error(failure)),
      (response) => emit(GetInvoiceDiscountsState.done(response)),
    );
  }
}

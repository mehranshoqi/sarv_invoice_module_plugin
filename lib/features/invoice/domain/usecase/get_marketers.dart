import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dio/error/failure.dart';
import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/get_marketers/response/response.dart';
import '../repository/repository.dart';

@lazySingleton
class GetMarketers
    extends UseCases<BaseResponse<GetMarketersResponse>, NoParams> {
  final InvoiceRepository repository;

  GetMarketers(this.repository);

  @override
  Future<Either<Failure, BaseResponse<GetMarketersResponse>>> call(
          NoParams params) async =>
      await repository.getMarketers(params);
}

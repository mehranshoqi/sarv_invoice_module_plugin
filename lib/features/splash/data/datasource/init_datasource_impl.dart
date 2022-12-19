import 'dart:convert';

import '../../../../core/constants/pref_keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/response/base_response/base_response.dart';
import '../../../../core/injection/di.dart';
import '../../domain/entities/init/response/init_response.dart';
import 'init_datasource.dart';

@LazySingleton(as: InitDatasource)
class InitDatasourceIMPL implements InitDatasource {
  final Dio dio;

  InitDatasourceIMPL(this.dio);

  @override
  Future<BaseResponse<InitResponse>> getInit() async {
    await Future.delayed(const Duration(milliseconds: 300));
    final Response response = await dio.get(
      '/init',
    );
    final res = BaseResponse.fromJson(
      response.data,
      (res) => InitResponse.fromJson(res),
    );
    await _cacheInitResponse(res);
    return res;
  }

  Future<void> _cacheInitResponse(
      BaseResponse<InitResponse> baseResponse) async {
    final _st = sl<FlutterSecureStorage>();
    await _st.write(
      key: Prefkeys.initResponse,
      value: jsonEncode(baseResponse.data!),
    );
  }
}

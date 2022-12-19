// import 'package:dio/dio.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:injectable/injectable.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// import '../constants/pref_keys.dart';
// import 'di.dart';

// @module
// abstract class ExternalModule {
//   @lazySingleton
//   FlutterSecureStorage flutterSecureStorage() => const FlutterSecureStorage();

//   @lazySingleton
//   Dio dio() {
//     final Dio dio = Dio(
//       BaseOptions(
//         // baseUrl: 'http://192.168.100.99:4001/api/v1',
//         baseUrl: 'http://82.115.20.136:4000/api/v1',
//         receiveDataWhenStatusError: true,
//         sendTimeout: 24000,
//         connectTimeout: 24000,
//         receiveTimeout: 24000,
//         headers: {
//           'Content-Type': 'application/json', 
//           'Accept': 'application/json',
//         },
//       ),
//     );

//     dio.interceptors.add(
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseBody: true,
//         responseHeader: false,
//         request: true,
//         error: true,
//         compact: false,
//         maxWidth: 300,
//       ),
//     );

//     dio.interceptors.add(
//       InterceptorsWrapper(onRequest: (options, handler) async {
//         final String token = await _getUserToken();
//         final String selectedStoreId = await _getSelectedStore();
//         if (token.isNotEmpty)
//           options.headers.addAll({'authorization': 'Bearer ' + token});
//         if (selectedStoreId.isNotEmpty)
//           options.headers.addAll({'Store': selectedStoreId});
//         return handler.next(options);
//       }, onResponse: (response, handler) {
//         _updateUserToken(response);
//         _logResponse(response);
//         return handler.next(response);
//       }, onError: (err, handler) {
//         _logError(err);
//         return handler.next(err);
//       }),
//     );
//     return dio;
//   }

//   Future<void> _updateUserToken(Response response) async {
//     final String? token = response.headers['authorization']?.first;
//     if (token != null) {
//       final st = sl<FlutterSecureStorage>();
//       await st.write(key: Prefkeys.token, value: token);
//     }
//   }

//   Future<String> _getUserToken() async {
//     final st = sl<FlutterSecureStorage>();
//     return await st.read(key: Prefkeys.token) ?? '';
//   }

//   Future<String> _getSelectedStore() async {
//     final st = sl<FlutterSecureStorage>();
//     return await st.read(key: Prefkeys.selectedStoreId) ?? '';
//   }

//   void _logResponse(Response response) {
//     print('- - - - - - - - - - - <      --      > - - - - - - - - - - - -');
//     print('- - - - - - - - - - - < NEW RESPONSE > - - - - - - - - - - - -');
//     print('Status: ${response.statusCode}');
//     print('Status: ${response.data}');
//   }

//   void _logError(DioError err) {
//     print('* * * *  ERROR INTERCEPTOR  * * * * ');
//     print('ERROR DATA => \n');
//     print(err.response?.data);
//     print('ERROR CODE => ${err.response?.statusCode}');
//     print('* * * * *  END ERROR LOG  * * * * * ');
//   }
// }

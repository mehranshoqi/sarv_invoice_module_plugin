import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  static List<dynamic>? fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return ["Request to API server was cancelled"];
      case DioErrorType.connectTimeout:
        return ["Connection timeout with API server"];
      case DioErrorType.other:
        return ["Connection to API server failed Due Internet Conection!"];
      case DioErrorType.receiveTimeout:
        return ["Receive timeout in connection with API server"];
      case DioErrorType.response:
        return _handleError(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
      case DioErrorType.sendTimeout:
        return ["Send timeout in connection with API server"];
      default:
        return ["Something went wrong"];
      // break;
    }
  }

  List<String>? message;

  static List<dynamic> _handleError(
      int? statusCode, Map<String, dynamic> error) {
    print(statusCode);
    print(error.toString());
    switch (statusCode) {
      // case 400:
      //   return ["Wrong request!"];
      // case 403:
      //   return ['Access Denied!'];
      // case 404:
      //   return ["not found!"];
      // case 500:
      //   return ['Internal server error'];
      default:
        // return [error['error']['message']];
        return ['fff'];
    }
  }

  @override
  String toString() => message!.toString();
}

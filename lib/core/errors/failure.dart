import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timed Out with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Data Timed Out with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Data Timed Out with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Certificate Error with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data!,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Certificate Error with Api Server');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error with Api Server');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('Socket Exception')) {
          return ServerFailure('No Internet Connection');
        } else {
          return ServerFailure('Unexpected Error, Please Try Again !');
        }
      default:
        return ServerFailure('Oops There was an Error, Please try Again Later');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request Not Found, Please Try Again ');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please try Later');
    } else {
      return ServerFailure('Oops There was an Error, Please try Again Later');
    }
  }
}

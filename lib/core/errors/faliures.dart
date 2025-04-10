import 'package:dio/dio.dart';

abstract class Faliures {
  final String errMessage;

  const Faliures(this.errMessage);
}

class ServerFaliure extends Faliures {
  ServerFaliure(super.errMessage);

  factory ServerFaliure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.badCertificate:
        return ServerFaliure('Bad Certificate');
      case DioExceptionType.cancel:
        return ServerFaliure('Request to ApiServer was canceld');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketExeption')) {
          return ServerFaliure('No Internet Connection');
        }

        return ServerFaliure('Unexpected Error ,try again');
      default:
        return ServerFaliure('Opps there was ann error , try again');
    }
  }

  factory ServerFaliure.fromResponse(int statusCode, dynamic resposne) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(resposne['error']['message']);
    } else if (statusCode == 404) {
      return ServerFaliure('Your Request Not Found, Please Try Again Later');
    } else if (statusCode == 500) {
      return ServerFaliure('Internal Server Error , please try again later');
    } else {
      return ServerFaliure('Opps there was ann error , try again later');
    }
  }
}

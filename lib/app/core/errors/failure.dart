import 'package:cms/app/core/errors/error_handler.dart';

class Failure implements Exception {
  const Failure({
    required this.message,
    this.code,
  });
  final String message;
  final int? code;

  @override
  String toString() => 'Failure(message: $message, code: $code)';
}

class DefaultFailure extends Failure {
  DefaultFailure()
      : super(code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
}

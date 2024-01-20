import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/server_exception.dart';

class UnauthorizedException implements ServerException {
  @override
  String get message => 'Unauthorized';
}

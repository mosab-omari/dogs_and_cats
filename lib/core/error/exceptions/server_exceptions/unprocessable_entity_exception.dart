import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/server_exception.dart';

class UnProcessableEntity implements ServerException {
  @override
  String get message => 'Invalid Data Entered';
}

part of 'connection_exception.dart';

class ConnectionTimeoutException implements RepoException {
  @override
  String get message => 'Connection Timeout';
}

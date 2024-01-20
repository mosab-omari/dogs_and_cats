part of 'connection_exception.dart';

class NoInternetException implements RepoException {
  @override
  String get message => 'Please check your internet connection';
}

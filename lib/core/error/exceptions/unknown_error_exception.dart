import 'repository_exception.dart';

class UnknownErrorException implements RepoException {
  @override
  String get message => 'An error has occurred';
}

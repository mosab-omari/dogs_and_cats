

abstract class UseCase<Model, Params> {
  Future<Model> call(Params params);
  // final Params? params;
  // UseCase({this.params});
}

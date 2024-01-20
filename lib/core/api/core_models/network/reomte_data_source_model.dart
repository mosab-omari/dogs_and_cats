import '../response_model.dart';

class RemoteDataSourceModel extends ResponseModel {
  String message;
  bool status;
  int statusCode;
  ResponseModel generalResponseModel;

  @override
  RemoteDataSourceModel.fromJson(
      {required Map<String, dynamic> data, required this.generalResponseModel})
      : message = data['message'],
        status = data['status'],
        statusCode = data['status_code'];
}

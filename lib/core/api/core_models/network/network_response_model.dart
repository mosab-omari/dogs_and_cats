import '../response_model.dart';

class NetworkResponseModel extends ResponseModel {
  String message;
  bool status;
  int statusCode;
  ResponseModel generalResponseModel;

  @override
  NetworkResponseModel.fromJson(
      {required Map<String, dynamic> data, required this.generalResponseModel})
      : message = data['message'],
        status = data['status'],
        statusCode = data['status_code'];
}

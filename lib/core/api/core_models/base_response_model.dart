import 'general_response_model.dart';

class BaseResponseModel extends GeneralResponseModel {
  String message;
  bool status;
  int statusCode;
  GeneralResponseModel generalResponseModel;

  @override
  BaseResponseModel.fromJson(
      {required Map<String, dynamic> data, required this.generalResponseModel})
      : message = data['message'],
        status = data['status'],
        statusCode = data['status_code'];
}

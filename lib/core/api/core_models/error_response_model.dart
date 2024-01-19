import 'general_response_model.dart';

class ErrorResponseModel extends GeneralResponseModel{
  final String errorMessage;
  ErrorResponseModel({required this.errorMessage});
  ErrorResponseModel.fromJson({required this.errorMessage});
}
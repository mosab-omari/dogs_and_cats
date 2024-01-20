import '../response_model.dart';

class NetworkErrorResponseModel extends ResponseModel{
  final String errorMessage;
  NetworkErrorResponseModel({required this.errorMessage});
  NetworkErrorResponseModel.fromJson({required this.errorMessage});
}
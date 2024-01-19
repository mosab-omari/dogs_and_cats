import 'package:algooru_flutter_assessment/core/api/core_models/general_request_model.dart';

class GetAnimalsParams extends GeneralRequestModel {
  final int limit;

  GetAnimalsParams({required this.limit});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['limit'] = limit;
    return data;
  }
}

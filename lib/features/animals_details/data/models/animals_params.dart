import 'package:algooru_flutter_assessment/core/api/core_models/network/network_request_model.dart';

class AnimalsDetailsParams extends NetworkRequestModel {
  final int? limit;
  final double? height;

  AnimalsDetailsParams({this.limit, this.height});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['limit'] = limit;
    data['height'] = height;
    return data;
  }
}

import 'package:algooru_flutter_assessment/core/api/client/client.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/data_sources/cats_details_remote_data_source.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cats_details_remote_data_source_test.mocks.dart';

@GenerateMocks([Client])
void main() {
  late final CatsDetailsRemoteDataSource catsDetailsRemoteDataSource;
  late final MockClient<AnimalsListModel> mockClient;
  setUp(() {
    mockClient = MockClient();
    catsDetailsRemoteDataSource =
        CatsDetailsRemoteDataSource(client: mockClient);
  });

  void setUpMockClientSuccess() {
    when(mockClient.request(any))
        .thenAnswer((_) async => AnimalsListModel(animals: []));
  }
}

import 'package:algooru_flutter_assessment/core/error/exceptions/server_exceptions/server_exception.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_model.dart';
import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/repositories/animals_details_repository.dart';
import 'package:algooru_flutter_assessment/features/animals_details/domain/use_cases/get_animals_response_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_animals_response_model_test.mocks.dart';

@GenerateMocks([AnimalsDetailsRepository])
void main() {
  test('should get animal details', () async {
    final MockAnimalsDetailsRepository repo = MockAnimalsDetailsRepository();

    final AnimalsListParams params = AnimalsListParams(limit: 3);

    GetAnimalsResponseModel useCase = GetAnimalsResponseModel(repo);
    when((repo.getAnimalsResponse(any))).thenAnswer((realInvocation) async =>
        Future.value(
            AnimalsListModel(animals: [Animal(), Animal(), Animal()])));

    final result = await useCase(params);

    expect(result.animals.length, 3);
    verify(repo.getAnimalsResponse(params));
    verifyNoMoreInteractions(repo);
  });

  test('throws an exception if the http call completes with an error',
      () async {
    final MockAnimalsDetailsRepository repo = MockAnimalsDetailsRepository();

    final params = AnimalsListParams(limit: -1);
    GetAnimalsResponseModel useCase = GetAnimalsResponseModel(repo);

    // Use Mockito to return an unsuccessful response when it calls the
    // provided http.Client.
    when(repo.getAnimalsResponse(any)).thenAnswer((realInvocation) async {
      return AnimalsListModel(animals: []);
    });

    final call = useCase;

    expect(() => call(params), throwsA(const TypeMatcher<ServerException>()));
    // verify(repo.getAnimalsResponse(params));
    // verifyNoMoreInteractions(repo);
  });
}

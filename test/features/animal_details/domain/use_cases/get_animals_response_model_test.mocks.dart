// Mocks generated by Mockito 5.4.4 from annotations
// in algooru_flutter_assessment/test/features/animal_details/domain/use_cases/get_animals_response_model_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:algooru_flutter_assessment/features/animals_details/data/models/animals_list_params.dart'
    as _i5;
import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animals_list.dart'
    as _i2;
import 'package:algooru_flutter_assessment/features/animals_details/domain/repositories/animals_details_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAnimalsList_0 extends _i1.SmartFake implements _i2.AnimalsList {
  _FakeAnimalsList_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AnimalsDetailsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAnimalsDetailsRepository extends _i1.Mock
    implements _i3.AnimalsDetailsRepository {
  MockAnimalsDetailsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AnimalsList> getAnimalsResponse(
          _i5.AnimalsListParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAnimalsResponse,
          [params],
        ),
        returnValue: _i4.Future<_i2.AnimalsList>.value(_FakeAnimalsList_0(
          this,
          Invocation.method(
            #getAnimalsResponse,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.AnimalsList>);
}

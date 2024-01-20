
import '../../../../core/api/core_models/response_model.dart';
import 'animal.dart';

class AnimalsList implements ResponseModel {
  final List<Animal> animals;


  AnimalsList({required this.animals});
}

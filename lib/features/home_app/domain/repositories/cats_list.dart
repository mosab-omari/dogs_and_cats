import 'package:algooru_flutter_assessment/features/home_app/domain/repositories/home_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/animal.dart';
import '../../data/models/get_animals_response.dart';

part 'cats_list.g.dart';

@riverpod
Future<List<Animal>> getCatsList(GetCatsListRef ref) async {
  final List<Animal> cats = await HomeRepo.getCatsList();
  return cats;
}

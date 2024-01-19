import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/animal.dart';
import 'home_repo.dart';

part 'dogs_list.g.dart';

@riverpod
Future<List<Animal>> getDogsList(GetDogsListRef ref) async {
  final List<Animal> cats = await HomeRepo.getDogsList();
  return cats;
}
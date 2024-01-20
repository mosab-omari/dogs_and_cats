import 'package:algooru_flutter_assessment/features/animals_details/domain/entities/animal_breed.dart';


class Animal {
  String? id;
  String? url;
  num? width;
  num? height;
  List<AnimalBreed>? breeds;

  Animal({this.id, this.url, this.width, this.height, this.breeds});
}

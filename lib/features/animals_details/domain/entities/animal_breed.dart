import '../../data/models/animal_breed_model.dart';

class AnimalBreed {
  Weight? weight;
  Weight? height;
  dynamic id;
  String? name;
  String? bredFor;
  String? lifeSpan;
  String? history;
  String? breedGroup;
  String? temperament;
  String? referenceImageId;

  AnimalBreed(
      {this.weight,
        this.height,
        this.id,
        this.name,
        this.bredFor,
        this.lifeSpan,
        this.breedGroup,
        this.history,
        this.temperament,
        this.referenceImageId});

}


import 'animal_breed.dart';

class Animal {
  String? id;
  String? url;
  num? width;
  num? height;
  List<Breed>? breeds;

  Animal({this.id, this.url, this.width, this.height, this.breeds});

  Animal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
    breeds = [];
    for (dynamic breed in json['breeds']) {
      breeds!.add(Breed.fromJson(breed));
    }
  }
}


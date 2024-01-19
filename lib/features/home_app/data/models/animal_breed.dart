class Breed {
  Weight? weight;
  Weight? height;
  dynamic id;
  String? name;
  String? bredFor;
  String? lifeSpan;
  String? history;
  String? temperament;
  String? referenceImageId;

  Breed(
      {this.weight,
        this.height,
        this.id,
        this.name,
        this.bredFor,
        this.lifeSpan,
        this.history,
        this.temperament,
        this.referenceImageId});

  Breed.fromJson(Map<String, dynamic> json) {
    weight =
    json['weight'] != null ? Weight.fromJson(json['weight']) : null;
    height =
    json['height'] != null ? Weight.fromJson(json['height']) : null;
    id = json['id'];
    name = json['name'];
    bredFor = json['bred_for'];
    lifeSpan = json['life_span'];
    history = json['history'];
    temperament = json['temperament'];
    referenceImageId = json['reference_image_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (weight != null) {
      data['weight'] = weight!.toJson();
    }
    if (height != null) {
      data['height'] = height!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['bred_for'] = bredFor;
    data['life_span'] = lifeSpan;
    data['history'] = history;
    data['temperament'] = temperament;
    data['reference_image_id'] = referenceImageId;
    return data;
  }
}

class Weight {
  String? imperial;
  String? metric;

  Weight({this.imperial, this.metric});

  Weight.fromJson(Map<String, dynamic> json) {
    imperial = json['imperial'];
    metric = json['metric'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imperial'] = imperial;
    data['metric'] = metric;
    return data;
  }
}

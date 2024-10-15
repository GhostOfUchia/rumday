class BarModel {
  BarModel({
    required this.id,
    required this.name,
    required this.website,
    required this.address,
    required this.businessPhone,
    required this.email,
    required this.features,
    required this.cuisineType,
    required this.themes,
    required this.backgroundImage,
    required this.image,
    required this.tenantStatus,
    required this.longitude,
    required this.latitude,
    required this.about,
    required this.ratingScoreAverage,
    required this.openHours,
    required this.tenantFilterTags,
    required this.tenantFeedbacks,
    required this.devices,
  });

  final String? id;
  final String? name;
  final String? website;
  final String? address;
  final String? businessPhone;
  final String? email;
  final List<dynamic> features;
  final List<dynamic> cuisineType;
  final List<dynamic> themes;
  final String? backgroundImage;
  final String? image;
  final String? tenantStatus;
  final double? longitude;
  final double? latitude;
  final String? about;
  final double? ratingScoreAverage;
  final dynamic openHours;
  final List<dynamic> tenantFilterTags;
  final List<dynamic> tenantFeedbacks;
  final List<dynamic> devices;

  factory BarModel.fromJson(Map<String, dynamic> json) {
    return BarModel(
      id: json["id"],
      name: json["name"],
      website: json["website"],
      address: json["address"],
      businessPhone: json["businessPhone"],
      email: json["email"],
      features: json["features"] == null
          ? []
          : List<dynamic>.from(json["features"]!.map((x) => x)),
      cuisineType: json["cuisineType"] == null
          ? []
          : List<dynamic>.from(json["cuisineType"]!.map((x) => x)),
      themes: json["themes"] == null
          ? []
          : List<dynamic>.from(json["themes"]!.map((x) => x)),
      backgroundImage: json["backgroundImage"],
      image: json["image"],
      tenantStatus: json["tenantStatus"],
      longitude: json["longitude"],
      latitude: json["latitude"],
      about: json["about"],
      ratingScoreAverage: json["ratingScoreAverage"],
      openHours: json["openHours"],
      tenantFilterTags: json["tenantFilterTags"] == null
          ? []
          : List<dynamic>.from(json["tenantFilterTags"]!.map((x) => x)),
      tenantFeedbacks: json["tenantFeedbacks"] == null
          ? []
          : List<dynamic>.from(json["tenantFeedbacks"]!.map((x) => x)),
      devices: json["devices"] == null
          ? []
          : List<dynamic>.from(json["devices"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "website": website,
        "address": address,
        "businessPhone": businessPhone,
        "email": email,
        "features": features.map((x) => x).toList(),
        "cuisineType": cuisineType.map((x) => x).toList(),
        "themes": themes.map((x) => x).toList(),
        "backgroundImage": backgroundImage,
        "image": image,
        "tenantStatus": tenantStatus,
        "longitude": longitude,
        "latitude": latitude,
        "about": about,
        "ratingScoreAverage": ratingScoreAverage,
        "openHours": openHours,
        "tenantFilterTags": tenantFilterTags.map((x) => x).toList(),
        "tenantFeedbacks": tenantFeedbacks.map((x) => x).toList(),
        "devices": devices.map((x) => x).toList(),
      };
}

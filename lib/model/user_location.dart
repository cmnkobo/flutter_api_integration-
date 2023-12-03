class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationCoordinate coordinates;
  final LocationStreet street;
  final LocationTimezone timezone;

  UserLocation(
      {required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.coordinates,
      required this.street,
      required this.timezone});

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'].toString(),
      coordinates: LocationCoordinate.fromMap(json['coordinates']),
      street: LocationStreet.fromMap(json['street']),
      timezone: LocationTimezone.fromMap(json['timezone']),
    );
  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;

  LocationCoordinate({
    required this.latitude,
    required this.longitude,
  });
  factory LocationCoordinate.fromMap(Map<String, dynamic> json) {
    return LocationCoordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({
    required this.number,
    required this.name,
  });
  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(
      number: json['number'],
      name: json['name'],
    );
  }
}

class LocationTimezone {
  final String offset;
  final String description;

  LocationTimezone({
    required this.offset,
    required this.description,
  });

  factory LocationTimezone.fromMap(Map<String, dynamic> json) {
    return LocationTimezone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}

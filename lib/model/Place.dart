class Place {
  final String? imageUrl;
  final String? city;
  final String? country;
  final int? properties;

  Place({this.imageUrl, this.city, this.country, this.properties});
}

final places = [
  Place(
    imageUrl: 'assets/images/bangkok.png',
    city: 'Da Nang',
    country: 'Da Nang',
    properties: 203,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.png',
    city: 'Bangkok',
    country: 'Thailand',
    properties: 586,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.png',
    city: 'London',
    country: 'England',
    properties: 427,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.png',
    city: 'Da Nang',
    country: 'Italy',
    properties: 891,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.png',
    city: 'Da Nang',
    country: 'Viet Nam',
    properties: 162,
  ),
  Place(
    imageUrl: 'assets/images/bangkok.png',
    city: 'Tokyo',
    country: 'Japan',
    properties: 372,
  ),
];

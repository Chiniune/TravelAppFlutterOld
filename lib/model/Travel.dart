class Travel {
  //model variables
  final String name;
  final String description;
  final int duration;
  final String location;
  final double rating;
  final int distance;
  final double cost;
  final List<String> imageUrl;

  //model constuctor
  Travel(this.name, this.duration, this.description, this.location, this.rating,
      this.distance, this.imageUrl, this.cost);

  //List of travel items
  static List<Travel> getTravelItems() {
    final List<Travel> _travelList = [
      Travel(
          'Asia Park',
          4,
          'The building where the heights meets the golden touches',
          'Da Nang city',
          4.6,
          3,
          ['assets/images/bana43.png', 'assets/images/bana34.png'],
          230),
      Travel(
          'Asia Park',
          5,
          'Built on top of a man-made island, this building is a masterpiece',
          'Da Nang city',
          4.3,
          6,
          ['assets/images/thantai43.png', 'assets/images/thantai34.png'],
          432),
      Travel(
          'Than Tai Mountain',
          3,
          'Visit and experience the magic of the oldest arc bridge in the world',
          'Da Nang city',
          4.5,
          8,
          ['assets/images/bana43.png', 'assets/images/bana34.png'],
          283),
      Travel(
          'Than Tai Mountain',
          3,
          'Do you have a taste for beaches, and camels. Magic Sandy Beaches is for you',
          'Da Nang city',
          4.2,
          16,
          ['assets/images/bana43.png', 'assets/images/bana34.png'],
          389),
      Travel(
          'Ba Na Hills',
          2,
          'The beach offers senernity and deep connection to the mother nature',
          'Da Nang city',
          4.8,
          21,
          ['assets/images/bana43.png', 'assets/images/bana34.png'],
          534),
    ];
    return _travelList;
  }

//Get the nearest list items (Those whose distance is less than 10kms
  static List<Travel> getNearestItems() {
    List<Travel> _travelList = Travel.getTravelItems();
    return _travelList.toList();
    // return _travelList.where((element) => element.distance < 10).toList();
  }
}

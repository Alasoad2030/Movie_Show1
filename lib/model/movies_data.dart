class MoviesData {
  final String backdropPath;
  final String originalTitle;
  final String title;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  MoviesData({
    required this.backdropPath,
    required this.originalTitle,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });
  factory MoviesData.fromjson(Map<String, dynamic> json) {
    return MoviesData(
      backdropPath: json['backdrop_path'],
      originalTitle: json['original_title'],
      title: json['title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'],
    );
  }
}



// "adult": false,
// "backdrop_path": "/nTPFkLUARmo1bYHfkfdNpRKgEOs.jpg",
// "genre_ids": [
// 35,
// 10749
// ],
// "id": 1072790,
// "original_language": "en",
// "original_title": "Anyone But You",
// "overview": "After an amazing first date, Bea and Ben’s fiery attraction turns ice cold — until they find themselves unexpectedly reunited at a destination wedding in Australia. So they do what any two mature adults would do: pretend to be a couple.",
// "popularity": 2086.66,
// "poster_path": "/yRt7MGBElkLQOYRvLTT1b3B1rcp.jpg",
// "release_date": "2023-12-21",
// "title": "Anyone But You",
// "video": false,
// "vote_average": 6.891,
// "vote_count": 577
// },

class HomeMoviesModel {
  final String backdropPath;
  final String originalTitle;
  final String title;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  HomeMoviesModel({
    required this.backdropPath,
    required this.originalTitle,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });
  factory HomeMoviesModel.fromjson(Map<String, dynamic> json) {
    return HomeMoviesModel(
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

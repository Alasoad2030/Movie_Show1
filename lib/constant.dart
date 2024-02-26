class Constants {
  // Api key of the Api
  static String apiKey = '423f03c21527b514d702a84402d9ede5';
// the Url of the trending movies
  static String trendingMovies =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey';
// the Url of the to Rated movies
  static String topRatedMovies =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey';
// the Url of the upcoming movies
  static String upcomingMovies =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey';
// the base Url of the image
  static String imageUrl = 'https://image.tmdb.org/t/p/w500/';
// the Uri of the Url of the trending Movies
  static Uri urlTrendingMovies = Uri.parse(trendingMovies);
// the Uri of the Url of the Top Rated Movies
  static Uri urlTopRatedMovies = Uri.parse(topRatedMovies);
// the Uri of the Url of the Upcoming Movies
  static Uri urlUpcomingMovies = Uri.parse(upcomingMovies);
}

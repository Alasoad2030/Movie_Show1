class ApiEndpoints {
// Api key of the Api
  static String apiKey = '423f03c21527b514d702a84402d9ede5';
  static String baseUrl = 'https://api.themoviedb.org/3/';
  static String baseImageUrl = 'https://image.tmdb.org/t/p/w500/';

// the Url of the trending movies
  static String trendingMoviesEndpoint = 'trending/movie/day?api_key=$apiKey';
// the Url of the to Rated movies
  static String topRatedMoviesEndpoint = 'movie/top_rated?api_key=$apiKey';
// the Url of the upcoming movies
  static String upcomingMoviesEndpoint = 'movie/upcoming?api_key=$apiKey';

// the Uri of the Url of the trending Movies
  static Uri urlTrendingMovies = Uri.parse(baseUrl + trendingMoviesEndpoint);
// the Uri of the Url of the Top Rated Movies
  static Uri urlTopRatedMovies = Uri.parse(baseUrl + topRatedMoviesEndpoint);
// the Uri of the Url of the Upcoming Movies
  static Uri urlUpcomingMovies = Uri.parse(baseUrl + upcomingMoviesEndpoint);
}

class WeatherAppConstants{
  static String baseurl='https://api.openweathermap.org/data/2.5';
  static String apiKey='f476b6294c20e8166b3639fbcc2f8863';

}
class MoviesAppConstants{
  static String baseurl='https://api.themoviedb.org/3';
  static String apiKey='f476b6294c20e8166b3639fbcc2f8863';
  static String baseImageUrl='https://image.tmdb.org/t/p/w500';
  static String getNowPlayingPath='$baseurl/movie/now_playing?api_key=$apiKey';
  static String getPopularMoviesPath='$baseurl/movie/popular?api_key=$apiKey';
  static String getTopRatedPath='$baseurl/movie/top_rated?api_key=$apiKey';
  static String movieDetailsPath(int movieId)=>'$baseurl/movie/$movieId?api_key=$apiKey';
  static String imageUrl(String path)=>'$baseImageUrl$path';
}
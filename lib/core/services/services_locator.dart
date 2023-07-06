import 'package:get_it/get_it.dart';
import 'package:movies_app/data/repositories/movies_repository.dart';
import 'package:movies_app/data/sources/movie_remote_data_source.dart';
import 'package:movies_app/domain/repository/base_movies_repository.dart';
import 'package:movies_app/domain/usecases/get_movie_detail.dart';
import 'package:movies_app/domain/usecases/get_now_playing_movie.dart';
import 'package:movies_app/domain/usecases/get_popular_movies.dart';
import 'package:movies_app/domain/usecases/get_top_rated_movies.dart';
import 'package:movies_app/presentation/controllers/movie_bloc.dart';
import 'package:movies_app/presentation/controllers/movie_details_bloc.dart';
final serviceLocator=GetIt.instance;
class ServicesLocator{
  void init(){
    ///bloc
    serviceLocator.registerFactory(() => MovieBloc(serviceLocator(),serviceLocator(),serviceLocator(),));
    serviceLocator.registerFactory(() => MovieDetailsBloc(serviceLocator(),));
    ///use case
    serviceLocator.registerLazySingleton(() => GetNowPlayingMovies(serviceLocator()));
    serviceLocator.registerLazySingleton(() => GetTopRatedMovies(serviceLocator()));
    serviceLocator.registerLazySingleton(() => GetPopularMovies(serviceLocator()));
    serviceLocator.registerLazySingleton(() => GetMovieDetail(serviceLocator()));
    ///repositry
    serviceLocator.registerLazySingleton<BaseMoviesRepositry>(() => MoviesRepository(serviceLocator()));
    serviceLocator.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
  }
}
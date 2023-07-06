
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/exceptions/remote_exception.dart';
import 'package:movies_app/domain/entities/movie_detail.dart';
import 'package:movies_app/domain/entities/movies.dart';
import 'package:movies_app/domain/usecases/get_movie_detail.dart';

abstract class BaseMoviesRepositry{
  Future<Either<ServerException,List<Movies>>> getNowPlaying();
  Future<Either<ServerException,List<Movies>>> getPopularMovies();
  Future<Either<ServerException,List<Movies>>> getTopRatedMovies();
  Future<Either<ServerException,MovieDetail>> getMovieDetail(MovieDetailParameters parameters);


}
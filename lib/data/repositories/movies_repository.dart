
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/exceptions/remote_exception.dart';
import 'package:movies_app/data/sources/movie_remote_data_source.dart';
import 'package:movies_app/domain/entities/movie_detail.dart';
import 'package:movies_app/domain/entities/movies.dart';
import 'package:movies_app/domain/repository/base_movies_repository.dart';
import 'package:movies_app/domain/usecases/get_movie_detail.dart';


 class MoviesRepository extends BaseMoviesRepositry{
   final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<ServerException,List<Movies>>> getNowPlaying() async{

    final result=await baseMovieRemoteDataSource.getNowPlayingMovie();
    try{

      return Right(result);
    }on ServerException catch (serverException){
      return Left(ServerException(errorMessageModel:serverException.errorMessageModel));
    }

  }

  @override
  Future<Either<ServerException,List<Movies>>> getPopularMovies() async{
    final result=await baseMovieRemoteDataSource.getPopularMovies();
    try{

      return Right(result);
    }on ServerException catch (serverException){
      return Left(ServerException(errorMessageModel:serverException.errorMessageModel));
    }
  }

  @override
  Future<Either<ServerException,List<Movies>>>getTopRatedMovies() async{
    final result=await baseMovieRemoteDataSource.getTopRatedMovies();
    try{

      return Right(result);
    }on ServerException catch (serverException){
      return Left(ServerException(errorMessageModel:serverException.errorMessageModel));
    }
  }

  @override
  Future<Either<ServerException, MovieDetail>> getMovieDetail(MovieDetailParameters parameters) async{
    final result=await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try{
      return Right(result);
    }on ServerException catch (serverException){
      return Left(ServerException(errorMessageModel:serverException.errorMessageModel));
    }
  }

}
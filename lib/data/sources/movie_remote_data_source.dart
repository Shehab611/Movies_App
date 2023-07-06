
import 'package:dio/dio.dart';
import 'package:movies_app/core/exceptions/remote_exception.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/data/models/movie_detail_model.dart';
import 'package:movies_app/data/models/movie_model.dart';
import 'package:movies_app/domain/usecases/get_movie_detail.dart';
abstract class BaseMovieRemoteDataSource{
  Future<List<MovieModel>> getNowPlayingMovie();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetailModel> getMovieDetails(MovieDetailParameters parameters);
  
}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource{
  @override
  Future<List<MovieModel>> getNowPlayingMovie() async {
    final response = await Dio().get(MoviesAppConstants.getNowPlayingPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data['results'] as List).map((e) => MovieModel.fromJson(json: e)));
    }else{
throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{
    final response = await Dio().get(
        MoviesAppConstants.getPopularMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data['results'] as List).map((e) => MovieModel.fromJson(json: e)));
    }else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async{
    final response = await Dio().get(
        MoviesAppConstants.getTopRatedPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data['results'] as List).map((e) => MovieModel.fromJson(json: e)));
    }else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetails(MovieDetailParameters parameters) async{
    final response = await Dio().get(
        MoviesAppConstants.movieDetailsPath(parameters.movieId));
    if (response.statusCode == 200) {
      return MovieDetailModel.fromJson(response.data);

    }else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}

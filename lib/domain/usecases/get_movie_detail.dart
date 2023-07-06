
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/base_usecase/use_cases.dart';
import 'package:movies_app/core/exceptions/remote_exception.dart';
import 'package:movies_app/domain/entities/movie_detail.dart';
import 'package:movies_app/domain/repository/base_movies_repository.dart';

class GetMovieDetail extends BaseUseCase<MovieDetail, MovieDetailParameters> {
  final BaseMoviesRepositry moviesRepositry;

  GetMovieDetail(this.moviesRepositry);

  @override
  Future<Either<ServerException, MovieDetail>> call(MovieDetailParameters parameters) async {
    return await moviesRepositry.getMovieDetail(parameters);
  }
}

class MovieDetailParameters extends Equatable {
  final int movieId;

  const MovieDetailParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
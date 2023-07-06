
import 'package:equatable/equatable.dart';
import 'package:movies_app/domain/entities/genres.dart';

class MovieDetail extends Equatable {
  final String movieImage;
  final String movieDetail;
  final String movieReleaseDate;
  final String movieTitle;
  final double movieVoteAverage;
  final int movieId;
  final int movieTime;
  final List<Genres> genresId;

  const MovieDetail(
      {required this.movieImage,
      required this.movieDetail,
      required this.movieReleaseDate,
      required this.movieTitle,
      required this.movieVoteAverage,
      required this.movieId,
      required this.movieTime,
      required this.genresId});

  @override
  List<Object> get props => [
        movieImage,
        movieDetail,
        movieReleaseDate,
        movieTitle,
        movieVoteAverage,
        movieId,
        movieTime,genresId
      ];
}

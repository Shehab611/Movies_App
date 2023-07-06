import 'package:equatable/equatable.dart';

class Movies extends Equatable{
  final String movieImage;
  final String movieTitle;
  final String movieDescription;
  final String releaseDate;
  final int movieId;
  final double voteAverage;
  final List<int> genderIds;

  const Movies({required this.movieImage,
    required this.movieTitle,
    required this.movieDescription,
    required this.movieId,
    required this.voteAverage,
    required this.releaseDate,
    required this.genderIds});

  @override
  List<Object> get props =>
      [movieImage,
        movieTitle,
        movieDescription,
        movieId,
        voteAverage,
        genderIds,releaseDate ];
}

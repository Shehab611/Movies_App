

import 'package:movies_app/domain/entities/movies.dart';

class MovieModel extends Movies {
  const MovieModel(
      {required super.movieImage,
      required super.movieTitle,
      required super.movieDescription,
      required super.movieId,
      required super.voteAverage,
      required super.releaseDate,
      required super.genderIds});

  factory MovieModel.fromJson({required Map<String, dynamic> json}) =>
      MovieModel(
          movieImage: json['backdrop_path'],
          movieTitle: json['title'],
          movieDescription: json['overview'],
          movieId: json['id'],
          voteAverage: json['vote_average'].toDouble(),
          releaseDate: json['release_date'],
          genderIds: List<int>.from(json['genre_ids'].map((e) => e)));
}

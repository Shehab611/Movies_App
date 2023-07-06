
import 'package:movies_app/data/models/genres_model.dart';
import 'package:movies_app/domain/entities/movie_detail.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel(
      {required super.movieImage,
      required super.movieDetail,
      required super.movieReleaseDate,
      required super.movieTitle,
      required super.movieVoteAverage,
      required super.movieId,
      required super.movieTime,
      required super.genresId});

 factory MovieDetailModel.fromJson(Map<String,dynamic> json)=>MovieDetailModel(
movieDetail: json['overview'],movieId: json['id'],movieImage: json['backdrop_path']
,movieReleaseDate: json['release_date'],movieTime: json['runtime'],movieTitle: json['title']
 ,movieVoteAverage: json['vote_average'].toDouble(),genresId: List<GenresModel>.from(
   json['genres'].map((e)=>GenresModel.fromJson(e))

 ));
}

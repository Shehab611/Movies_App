part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {

  final RequestState movieDetailsState;
  final MovieDetail? movieDetail;
  final String movieDetailMessage;

  const MovieDetailsState(
      { this.movieDetailMessage = '', this.movieDetailsState = RequestState
          .loading,
        this.movieDetail
      });
  MovieDetailsState copyWith({
     RequestState? movieDetailsState,
     MovieDetail? movieDetail,
     String? movieDetailMessage,

}){
    return MovieDetailsState(
      movieDetail: movieDetail??this.movieDetail,
      movieDetailMessage: movieDetailMessage??this.movieDetailMessage,
      movieDetailsState: movieDetailsState??this.movieDetailsState
    );
}
  @override
  List<Object?> get props =>
      [movieDetailsState, movieDetail, movieDetailMessage,];

}


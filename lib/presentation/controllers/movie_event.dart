part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();
  @override
  List<Object> get props => [];
}

class GetNowPlayingMovieEvent extends MovieEvent {}
class GetTopRatedMovieEvent extends MovieEvent {}
class GetPopularMovieEvent extends MovieEvent {}
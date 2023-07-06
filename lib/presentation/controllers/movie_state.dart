part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final List<Movies> nowPlayingMovies;
  final String nowPlayingMessage;
  final RequestState nowPlayingRequestState;
  final List<Movies> topRatedMovies;
  final String topRatedMessage;
  final RequestState topRatedRequestState;
  final List<Movies> popularMovies;
  final String popularMessage;
  final RequestState popularRequestState;

  const MovieState(
      {this.nowPlayingMovies = const [],
      this.nowPlayingMessage = '',
      this.nowPlayingRequestState = RequestState.loading,
      this.topRatedMovies = const [],
      this.topRatedMessage = '',
      this.topRatedRequestState = RequestState.loading,
      this.popularMovies = const [],
      this.popularMessage = '',
      this.popularRequestState = RequestState.loading});

  MovieState copyWith({
    List<Movies>? nowPlayingMovies,
    String? nowPlayingMessage,
    RequestState? nowPlayingRequestState,
    List<Movies>? topRatedMovies,
    String? topRatedMessage,
    RequestState? topRatedRequestState,
    List<Movies>? popularMovies,
    String? popularMessage,
    RequestState? popularRequestState,
  }) {
    return MovieState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        nowPlayingRequestState: nowPlayingRequestState ?? this.nowPlayingRequestState,
        popularMessage: popularMessage ?? this.popularMessage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularRequestState: popularRequestState ?? this.popularRequestState,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedRequestState: topRatedRequestState ?? this.topRatedRequestState);
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingMessage,
        nowPlayingRequestState,
        topRatedMovies,
        topRatedMessage,
        topRatedRequestState,
        popularMovies,
        popularMessage,
        popularRequestState,
      ];
}

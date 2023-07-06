import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/base_usecase/use_cases.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/domain/entities/movies.dart';
import 'package:movies_app/domain/usecases/get_now_playing_movie.dart';
import 'package:movies_app/domain/usecases/get_popular_movies.dart';
import 'package:movies_app/domain/usecases/get_top_rated_movies.dart';

part 'movie_event.dart';

part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMovies getNowPlayingMovies;
  final GetPopularMovies getPopularMovies;
  final GetTopRatedMovies getTopRatedMovies ;

  MovieBloc(this.getNowPlayingMovies, this.getPopularMovies, this.getTopRatedMovies) : super(const MovieState()) {
    on<GetNowPlayingMovieEvent>(_getNowPlayingMovie);
    on<GetPopularMovieEvent>(_getPopularMovies);
    on<GetTopRatedMovieEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovie(GetNowPlayingMovieEvent event,Emitter<MovieState> emit) async{
    final result = await getNowPlayingMovies(const NoParameter());
    result.fold(
            (l) => emit(state.copyWith(
            nowPlayingRequestState: RequestState.error,
            nowPlayingMessage: l.errorMessageModel.statusMessage)),
            (r) => emit(state.copyWith(
          nowPlayingRequestState: RequestState.loaded,
          nowPlayingMovies: r,
        )));
  }

  FutureOr<void> _getPopularMovies(GetPopularMovieEvent event, Emitter<MovieState> emit) async{

      final result = await getPopularMovies(const NoParameter());
      result.fold(
              (l) => emit(state.copyWith(
              popularRequestState: RequestState.error,
              popularMessage: l.errorMessageModel.statusMessage)),
              (r) => emit(state.copyWith(
            popularRequestState: RequestState.loaded,
            popularMovies: r,
          )));

  }

  FutureOr<void> _getTopRatedMovies(GetTopRatedMovieEvent event, Emitter<MovieState> emit) async{
    final result = await getTopRatedMovies(const NoParameter());
    result.fold(
            (l) => emit(state.copyWith(
            topRatedRequestState: RequestState.error,
            topRatedMessage: l.errorMessageModel.statusMessage)),
            (r) => emit(state.copyWith(
          topRatedRequestState: RequestState.loaded,
          topRatedMovies: r,
        )));
  }
}

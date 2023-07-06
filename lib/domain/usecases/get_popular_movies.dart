
import 'package:dartz/dartz.dart';
import 'package:movies_app/core/base_usecase/use_cases.dart';
import 'package:movies_app/core/exceptions/remote_exception.dart';
import 'package:movies_app/domain/entities/movies.dart';
import 'package:movies_app/domain/repository/base_movies_repository.dart';
class GetPopularMovies extends BaseUseCase<List<Movies>,NoParameter>{
  final BaseMoviesRepositry moviesRepositry;

  GetPopularMovies(this.moviesRepositry);

  @override
  Future<Either<ServerException,List<Movies>>> call(NoParameter parameters)async{

    return await moviesRepositry.getPopularMovies();
  }
}
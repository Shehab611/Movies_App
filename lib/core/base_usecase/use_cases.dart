
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/exceptions/remote_exception.dart';

abstract class BaseUseCase<T,Parameters>{
  Future<Either<ServerException,T>> call(Parameters parameters);
}
class NoParameter extends Equatable{
 const NoParameter();
  @override
  List<Object?> get props => [];

}
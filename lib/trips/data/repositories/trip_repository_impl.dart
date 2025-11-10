import 'package:clean_architecture_posts_app/trips/data/datasources/trip_local_data_source.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/domain/repositories/trip_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';

class TripRepositoryImpl implements TripRepository {
  final TripLocalDataSource dataSource;


  TripRepositoryImpl({
    required this.dataSource,
    
  });



  @override
  Future<Either<Failure, List<Trips>>> getAllTrips() async {
    try {
      final users =
          await dataSource.getAllTrips();
      return Right(users);
    } on ServerException {
      return Left(ServerFailure());
    }
  }


}

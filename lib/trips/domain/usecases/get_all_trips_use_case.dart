import 'package:clean_architecture_posts_app/core/error/failures.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/domain/repositories/trip_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllTripsUseCase {
  final TripRepository repository;

  GetAllTripsUseCase(this.repository);

  Future<Either<Failure, List<Trips>>> call() async {
    return await repository.getAllTrips();
  }
}
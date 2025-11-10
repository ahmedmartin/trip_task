
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';

abstract class TripRepository {
  Future<Either<Failure, List<Trips>>> getAllTrips();
  

}

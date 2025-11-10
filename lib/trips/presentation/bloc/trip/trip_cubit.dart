import 'package:bloc/bloc.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/domain/usecases/get_all_trips_use_case.dart';
import 'package:meta/meta.dart';

part 'trip_state.dart';

class TripCubit extends Cubit<TripState> {
  final GetAllTripsUseCase getAllTripsUseCase;
  TripCubit({required this.getAllTripsUseCase}) : super(TripInitial());

  Future<void> getAllCompounds () async {
    emit(TripLoading());

    final result = await getAllTripsUseCase.call();
    result.fold((l) => emit(TripFailure()), (r) => emit(TripLoaded(trips: r)),);
  }
}

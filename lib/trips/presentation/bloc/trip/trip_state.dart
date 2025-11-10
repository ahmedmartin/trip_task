part of 'trip_cubit.dart';

@immutable
class TripState {}

class TripInitial extends TripState {}

class TripLoading extends TripState{}

class TripLoaded extends TripState{
  final List<Trips> trips;

  TripLoaded({required this.trips});
}

class TripFailure extends TripState{}

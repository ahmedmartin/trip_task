import 'package:clean_architecture_posts_app/trips/data/datasources/trip_local_data_source.dart';
import 'package:clean_architecture_posts_app/trips/data/repositories/trip_repository_impl.dart';
import 'package:clean_architecture_posts_app/trips/domain/repositories/trip_repository.dart';
import 'package:clean_architecture_posts_app/trips/domain/usecases/get_all_trips_use_case.dart';
import 'package:clean_architecture_posts_app/trips/presentation/bloc/trip/trip_cubit.dart';


import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

Future<void> init() async {

// Bloc

  sl.registerFactory(() => TripCubit(getAllTripsUseCase: sl()));
  

// Usecases

  sl.registerLazySingleton(() => GetAllTripsUseCase(sl()));

// Repository

  sl.registerLazySingleton<TripRepository>(() => TripRepositoryImpl(
      dataSource: sl()));


// Datasources

  sl.registerLazySingleton<TripLocalDataSource>(
      () => TripLocalDataSourceImpl());




}

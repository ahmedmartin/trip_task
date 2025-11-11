import 'dart:convert';

import 'package:clean_architecture_posts_app/trips/data/models/trips_model.dart';
import 'package:flutter/services.dart';

import '../../../core/error/exceptions.dart';

abstract class TripLocalDataSource {
  Future<List<TripsModel>> getAllTrips();
}

class TripLocalDataSourceImpl implements TripLocalDataSource {
  
  @override
  Future<List<TripsModel>> getAllTrips() async {
    
    try{
    final jsonString = await rootBundle.loadString('assets/trips_mock.json');
    var result = jsonDecode(jsonString);
    List v = result['trips'];
     v.map((e) => TripsModel.fromJson(e),).toList();
		List<TripsModel> trips =	v.map((e) => TripsModel.fromJson(e),).toList();
    return trips;
    }catch(e){
      print(e);
      throw ServerException();
    }
  }

}

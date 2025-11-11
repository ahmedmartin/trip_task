
import 'package:clean_architecture_posts_app/trips/data/models/dates_model.dart';
import 'package:clean_architecture_posts_app/trips/data/models/participants_model.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';

class TripsModel extends Trips{
  TripsModel({required super.id, required super.status, required super.title, required super.dates, required super.participants, required super.unfinishedTasks, required super.coverImage,});


	factory TripsModel.fromJson(Map<String, dynamic> json) {
    return TripsModel(
		id :json['id'],
		status : json['status'],
		title : json['title'],
		dates : DatesModel.fromJson(json['dates']),
		participants:(json['participants'] as List)
        .map((v) => ParticipantsModel.fromJson(v))
        .toList(),
		unfinishedTasks : json['unfinished_tasks'],
		coverImage : json['cover_image'],
    );
	}

}


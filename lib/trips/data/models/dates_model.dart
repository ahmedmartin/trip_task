import 'package:clean_architecture_posts_app/trips/domain/entities/dates.dart';

class DatesModel extends Dates{
  DatesModel({required super.start, required super.end});

	factory DatesModel.fromJson(Map<String, dynamic> json) {
    return DatesModel(
		start : json['start'],
		end : json['end'],
    );
	}

}
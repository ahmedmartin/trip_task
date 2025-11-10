
import 'package:clean_architecture_posts_app/trips/domain/entities/participants.dart';

class ParticipantsModel extends Participants{
  
  
  const ParticipantsModel({required super.name, required super.avatarUrl});

	
	factory ParticipantsModel.fromJson(Map<String, dynamic> json) {
    return ParticipantsModel(
		name :json['name'],
		avatarUrl : json['avatar_url'],
    );
	}

}
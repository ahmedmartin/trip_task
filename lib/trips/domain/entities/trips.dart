import 'package:clean_architecture_posts_app/trips/domain/entities/dates.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/participants.dart';

class Trips {
  final String id;
  final String status;
  final String title;
  final Dates dates;
  final List<Participants> participants;
  final int unfinishedTasks;
  final String coverImage;

  Trips({
    required this.id,
    required this.status,
    required this.title,
    required this.dates,
    required this.participants,
    required this.unfinishedTasks,
    required this.coverImage,
  });
}

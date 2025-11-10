
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:flutter/material.dart';

class TripItemWidget extends StatelessWidget{

  final List<Trips> trips;

  const TripItemWidget({super.key, required this.trips});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

        ),
      ],
    );
  }
}


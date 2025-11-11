

import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/widgets/trip_item_widget.dart';
import 'package:flutter/material.dart';

class ItemPageMobile extends StatelessWidget{
  const ItemPageMobile({super.key, required this.trips});

  final List<Trips> trips;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trips.length,
      itemBuilder: (context, index) {
      return TripItemWidget(trip: trips[index]);
    },);
  }
}
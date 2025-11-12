

import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/widgets/trip_item_widget.dart';
import 'package:flutter/material.dart';

class ItemPageMobile extends StatelessWidget{
  const ItemPageMobile({super.key, required this.trips});

  final List<Trips> trips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:  15,right: 15,top: 10),
      child: ListView.separated(
        itemCount: trips.length,
        itemBuilder: (context, index) {
        return TripItemWidget(trip: trips[index]);
      },
      separatorBuilder: (context, index) {
       return const SizedBox(height: 20,);
      },
      ),
    );
  }
}
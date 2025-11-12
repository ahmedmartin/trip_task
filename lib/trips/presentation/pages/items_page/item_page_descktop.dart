import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/widgets/trip_item_widget.dart';
import 'package:flutter/material.dart';

class ItemPageDescktop extends StatelessWidget{
  const ItemPageDescktop({super.key, required this.trips});

  final List<Trips> trips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:  15,right: 15,top: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          // mainAxisExtent: 350,
    maxCrossAxisExtent: 300, 
    // crossAxisCount: 4,
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
    childAspectRatio: 1,
  ),
        itemCount: trips.length,
        itemBuilder: (context, index) {
        return TripItemWidget(trip: trips[index]);
      },
      ),
    );
  }
}
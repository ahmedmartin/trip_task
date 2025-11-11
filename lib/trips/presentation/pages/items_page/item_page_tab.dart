import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:flutter/material.dart';

class ItemPageTab extends StatelessWidget{
  const ItemPageTab({super.key, required this.trips});

  final List<Trips> trips;

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow,
    child: Text('tap'),);
  }
}
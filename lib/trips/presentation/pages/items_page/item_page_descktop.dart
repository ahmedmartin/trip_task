import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/bloc/trip/trip_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemPageDescktop extends StatelessWidget{
  const ItemPageDescktop({super.key, required this.trips});

  final List<Trips> trips;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Desktop'),
    );
  }
}
import 'package:clean_architecture_posts_app/trips/presentation/bloc/trip/trip_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemPageDescktop extends StatelessWidget{
  const ItemPageDescktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(builder: (context, state) {
        if(state is TripLoading){
          return CircularProgressIndicator();
        }else if(state is TripLoaded){
          return 
        }
      },),
    )
  }
}
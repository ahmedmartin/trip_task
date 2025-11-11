import 'package:clean_architecture_posts_app/trips/presentation/bloc/trip/trip_cubit.dart';
import 'package:clean_architecture_posts_app/trips/presentation/pages/items_page/item_page_descktop.dart';
import 'package:clean_architecture_posts_app/trips/presentation/pages/items_page/item_page_mobile.dart';
import 'package:clean_architecture_posts_app/trips/presentation/pages/items_page/item_page_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  late final TripCubit tripCubit ;

  @override
  void initState() {
    final GetIt getIt = GetIt.instance;
    tripCubit = getIt<TripCubit>();
    tripCubit.getAllTrips();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BlocBuilder(
        bloc: tripCubit,
        builder: (context, state) {
          print(state);
          if(state is TripLoading){
            return const CircularProgressIndicator();
          }else if(state is TripLoaded){
            return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // 📱 Mobile layout
            return  ItemPageMobile(trips: state.trips,);
          } else if (constraints.maxWidth < 1100) {
            // 💻 Tablet layout
            return ItemPageTab(trips: state.trips,);
          } else {
            // 🖥️ Desktop layout
            return  ItemPageDescktop(trips: state.trips,);
          }
        },
      );
          }else if(state is TripFailure){
            return const Text('Error');
          }else{
            return const SizedBox();
          }
        },),
    );
    
  }
}